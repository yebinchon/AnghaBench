
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {int num_excludes; } ;
typedef TYPE_1__ zend_trait_precedence ;
typedef TYPE_1__ zend_trait_alias ;
typedef int zend_string ;
typedef TYPE_1__ zend_class_name ;
struct TYPE_11__ {int refcount; int ce_flags; int default_properties_count; int default_static_members_count; int num_interfaces; int num_traits; TYPE_1__** trait_precedences; TYPE_1__** trait_aliases; TYPE_1__* trait_names; struct TYPE_11__** interfaces; TYPE_1__* interface_names; struct TYPE_11__** properties_info_table; int constants_table; int properties_info; int * default_static_members_table; int static_members_table; struct TYPE_11__* parent; int function_table; int * default_properties_table; } ;
typedef TYPE_4__ zend_class_entry ;
typedef size_t uint32_t ;


 void* ARENA_REALLOC (TYPE_4__*) ;
 scalar_t__ IN_ARENA (TYPE_4__*) ;
 int ZEND_ACC_LINKED ;
 int ZEND_MAP_PTR_INIT (int ,int **) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_COPY_VALUE_PROP (int *,int *) ;
 int ZVAL_INDIRECT (int *,int *) ;
 int __call ;
 int __callstatic ;
 int __debugInfo ;
 int __get ;
 int __isset ;
 int __set ;
 int __tostring ;
 int __unset ;
 int clone ;
 int constructor ;
 int destructor ;
 void* emalloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int serialize_func ;
 int unserialize_func ;
 int zend_hash_clone_constants (int *) ;
 int zend_hash_clone_methods (int *) ;
 int zend_hash_clone_prop_info (int *) ;
 int zend_update_inherited_handler (int ) ;

__attribute__((used)) static void zend_class_copy_ctor(zend_class_entry **pce)
{
 zend_class_entry *ce = *pce;
 zval *src, *dst, *end;

 *pce = ce = ARENA_REALLOC(ce);
 ce->refcount = 1;

 if ((ce->ce_flags & ZEND_ACC_LINKED) && IN_ARENA(ce->parent)) {
  ce->parent = ARENA_REALLOC(ce->parent);
 }

 if (ce->default_properties_table) {
  dst = emalloc(sizeof(zval) * ce->default_properties_count);
  src = ce->default_properties_table;
  end = src + ce->default_properties_count;
  ce->default_properties_table = dst;
  for (; src != end; src++, dst++) {
   ZVAL_COPY_VALUE_PROP(dst, src);
  }
 }

 zend_hash_clone_methods(&ce->function_table);


 if (ce->default_static_members_table) {
  int i, end;
  zend_class_entry *parent = !(ce->ce_flags & ZEND_ACC_LINKED) ? ((void*)0) : ce->parent;

  dst = emalloc(sizeof(zval) * ce->default_static_members_count);
  src = ce->default_static_members_table;
  ce->default_static_members_table = dst;
  i = ce->default_static_members_count - 1;


  end = parent ? parent->default_static_members_count : 0;
  for (; i >= end; i--) {
   zval *p = &dst[i];
   ZVAL_COPY_VALUE(p, &src[i]);
  }


  while (parent && parent->default_static_members_table) {
   end = parent->parent ? parent->parent->default_static_members_count : 0;
   for (; i >= end; i--) {
    zval *p = &dst[i];
    ZVAL_INDIRECT(p, &parent->default_static_members_table[i]);
   }

   parent = parent->parent;
  }
 }
 ZEND_MAP_PTR_INIT(ce->static_members_table, &ce->default_static_members_table);


 zend_hash_clone_prop_info(&ce->properties_info);


 zend_hash_clone_constants(&ce->constants_table);

 if (ce->properties_info_table) {
  int i;
  ce->properties_info_table = ARENA_REALLOC(ce->properties_info_table);
  for (i = 0; i < ce->default_properties_count; i++) {
   if (IN_ARENA(ce->properties_info_table[i])) {
    ce->properties_info_table[i] = ARENA_REALLOC(ce->properties_info_table[i]);
   }
  }
 }

 if (ce->num_interfaces) {
  zend_class_name *interface_names;

  if (!(ce->ce_flags & ZEND_ACC_LINKED)) {
   interface_names = emalloc(sizeof(zend_class_name) * ce->num_interfaces);
   memcpy(interface_names, ce->interface_names, sizeof(zend_class_name) * ce->num_interfaces);
   ce->interface_names = interface_names;
  } else {
   zend_class_entry **interfaces = emalloc(sizeof(zend_class_entry*) * ce->num_interfaces);
   uint32_t i;

   for (i = 0; i < ce->num_interfaces; i++) {
    if (IN_ARENA(ce->interfaces[i])) {
     interfaces[i] = ARENA_REALLOC(ce->interfaces[i]);
    } else {
     interfaces[i] = ce->interfaces[i];
    }
   }
   ce->interfaces = interfaces;
  }
 }

 zend_update_inherited_handler(constructor);
 zend_update_inherited_handler(destructor);
 zend_update_inherited_handler(clone);
 zend_update_inherited_handler(__get);
 zend_update_inherited_handler(__set);
 zend_update_inherited_handler(__call);

 zend_update_inherited_handler(serialize_func);
 zend_update_inherited_handler(unserialize_func);
 zend_update_inherited_handler(__isset);
 zend_update_inherited_handler(__unset);

 zend_update_inherited_handler(__tostring);


 zend_update_inherited_handler(__callstatic);
 zend_update_inherited_handler(__debugInfo);


 if (ce->num_traits) {
  zend_class_name *trait_names = emalloc(sizeof(zend_class_name) * ce->num_traits);

  memcpy(trait_names, ce->trait_names, sizeof(zend_class_name) * ce->num_traits);
  ce->trait_names = trait_names;

  if (ce->trait_aliases) {
   zend_trait_alias **trait_aliases;
   int i = 0;

   while (ce->trait_aliases[i]) {
    i++;
   }
   trait_aliases = emalloc(sizeof(zend_trait_alias*) * (i + 1));
   i = 0;
   while (ce->trait_aliases[i]) {
    trait_aliases[i] = emalloc(sizeof(zend_trait_alias));
    memcpy(trait_aliases[i], ce->trait_aliases[i], sizeof(zend_trait_alias));
    i++;
   }
   trait_aliases[i] = ((void*)0);
   ce->trait_aliases = trait_aliases;
  }

  if (ce->trait_precedences) {
   zend_trait_precedence **trait_precedences;
   int i = 0;

   while (ce->trait_precedences[i]) {
    i++;
   }
   trait_precedences = emalloc(sizeof(zend_trait_precedence*) * (i + 1));
   i = 0;
   while (ce->trait_precedences[i]) {
    trait_precedences[i] = emalloc(sizeof(zend_trait_precedence) + (ce->trait_precedences[i]->num_excludes - 1) * sizeof(zend_string*));
    memcpy(trait_precedences[i], ce->trait_precedences[i], sizeof(zend_trait_precedence) + (ce->trait_precedences[i]->num_excludes - 1) * sizeof(zend_string*));
    i++;
   }
   trait_precedences[i] = ((void*)0);
   ce->trait_precedences = trait_precedences;
  }
 }
}
