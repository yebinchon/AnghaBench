
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * method_name; int * class_name; } ;
struct TYPE_13__ {size_t num_excludes; TYPE_3__ trait_method; int ** exclude_class_names; } ;
typedef TYPE_2__ zend_trait_precedence ;
typedef TYPE_3__ zend_trait_method_reference ;
typedef int zend_string ;
struct TYPE_15__ {size_t num_traits; int * name; int function_table; TYPE_1__** trait_aliases; TYPE_2__** trait_precedences; } ;
typedef TYPE_4__ zend_class_entry ;
typedef size_t uint32_t ;
struct TYPE_12__ {TYPE_3__ trait_method; } ;
typedef int HashTable ;


 int ALLOC_HASHTABLE (int *) ;
 int E_COMPILE_ERROR ;
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ;
 int ZEND_FETCH_CLASS_TRAIT ;
 int ZSTR_VAL (int *) ;
 void* ecalloc (size_t,int) ;
 size_t zend_check_trait_usage (TYPE_4__*,TYPE_4__*,TYPE_4__**) ;
 int zend_error_noreturn (int ,char*,int ,...) ;
 TYPE_4__* zend_fetch_class (int *,int) ;
 int * zend_hash_add_empty_element (int *,int *) ;
 int zend_hash_exists (int *,int *) ;
 int zend_hash_init (int *,int ,int *,int *,int ) ;
 int zend_string_release_ex (int *,int ) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static void zend_traits_init_trait_structures(zend_class_entry *ce, zend_class_entry **traits, HashTable ***exclude_tables_ptr, zend_class_entry ***aliases_ptr)
{
 size_t i, j = 0;
 zend_trait_precedence **precedences;
 zend_trait_precedence *cur_precedence;
 zend_trait_method_reference *cur_method_ref;
 zend_string *lcname;
 HashTable **exclude_tables = ((void*)0);
 zend_class_entry **aliases = ((void*)0);
 zend_class_entry *trait;


 if (ce->trait_precedences) {
  exclude_tables = ecalloc(ce->num_traits, sizeof(HashTable*));
  i = 0;
  precedences = ce->trait_precedences;
  ce->trait_precedences = ((void*)0);
  while ((cur_precedence = precedences[i])) {

   cur_method_ref = &cur_precedence->trait_method;
   trait = zend_fetch_class(cur_method_ref->class_name,
       ZEND_FETCH_CLASS_TRAIT|ZEND_FETCH_CLASS_NO_AUTOLOAD);
   if (!trait) {
    zend_error_noreturn(E_COMPILE_ERROR, "Could not find trait %s", ZSTR_VAL(cur_method_ref->class_name));
   }
   zend_check_trait_usage(ce, trait, traits);


   lcname = zend_string_tolower(cur_method_ref->method_name);
   if (!zend_hash_exists(&trait->function_table, lcname)) {
    zend_error_noreturn(E_COMPILE_ERROR,
         "A precedence rule was defined for %s::%s but this method does not exist",
         ZSTR_VAL(trait->name),
         ZSTR_VAL(cur_method_ref->method_name));
   }
   for (j = 0; j < cur_precedence->num_excludes; j++) {
    zend_string* class_name = cur_precedence->exclude_class_names[j];
    zend_class_entry *exclude_ce = zend_fetch_class(class_name, ZEND_FETCH_CLASS_TRAIT |ZEND_FETCH_CLASS_NO_AUTOLOAD);
    uint32_t trait_num;

    if (!exclude_ce) {
     zend_error_noreturn(E_COMPILE_ERROR, "Could not find trait %s", ZSTR_VAL(class_name));
    }
    trait_num = zend_check_trait_usage(ce, exclude_ce, traits);
    if (!exclude_tables[trait_num]) {
     ALLOC_HASHTABLE(exclude_tables[trait_num]);
     zend_hash_init(exclude_tables[trait_num], 0, ((void*)0), ((void*)0), 0);
    }
    if (zend_hash_add_empty_element(exclude_tables[trait_num], lcname) == ((void*)0)) {
     zend_error_noreturn(E_COMPILE_ERROR, "Failed to evaluate a trait precedence (%s). Method of trait %s was defined to be excluded multiple times", ZSTR_VAL(precedences[i]->trait_method.method_name), ZSTR_VAL(exclude_ce->name));
    }



    if (trait == exclude_ce) {
     zend_error_noreturn(E_COMPILE_ERROR,
          "Inconsistent insteadof definition. "
          "The method %s is to be used from %s, but %s is also on the exclude list",
          ZSTR_VAL(cur_method_ref->method_name),
          ZSTR_VAL(trait->name),
          ZSTR_VAL(trait->name));
    }
   }
   zend_string_release_ex(lcname, 0);
   i++;
  }
  ce->trait_precedences = precedences;
 }

 if (ce->trait_aliases) {
  i = 0;
  while (ce->trait_aliases[i]) {
   i++;
  }
  aliases = ecalloc(i, sizeof(zend_class_entry*));
  i = 0;
  while (ce->trait_aliases[i]) {

   if (ce->trait_aliases[i]->trait_method.class_name) {
    cur_method_ref = &ce->trait_aliases[i]->trait_method;
    trait = zend_fetch_class(cur_method_ref->class_name, ZEND_FETCH_CLASS_TRAIT|ZEND_FETCH_CLASS_NO_AUTOLOAD);
    if (!trait) {
     zend_error_noreturn(E_COMPILE_ERROR, "Could not find trait %s", ZSTR_VAL(cur_method_ref->class_name));
    }
    zend_check_trait_usage(ce, trait, traits);
    aliases[i] = trait;


    lcname = zend_string_tolower(cur_method_ref->method_name);
    if (!zend_hash_exists(&trait->function_table, lcname)) {
     zend_error_noreturn(E_COMPILE_ERROR, "An alias was defined for %s::%s but this method does not exist", ZSTR_VAL(trait->name), ZSTR_VAL(cur_method_ref->method_name));
    }
    zend_string_release_ex(lcname, 0);
   }
   i++;
  }
 }

 *exclude_tables_ptr = exclude_tables;
 *aliases_ptr = aliases;
}
