
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ zend_class_entry ;
typedef scalar_t__ zend_bool ;
typedef int uint32_t ;


 int ALLOC_HASHTABLE (int ) ;
 int CG (int ) ;
 int ZEND_FETCH_CLASS_ALLOW_UNLINKED ;
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ;
 scalar_t__ class_visible (TYPE_1__*) ;
 int delayed_autoloads ;
 int in_compilation ;
 int zend_hash_add_empty_element (int ,int *) ;
 int zend_hash_init (int ,int ,int *,int *,int ) ;
 TYPE_1__* zend_lookup_class_ex (int *,int *,int) ;
 scalar_t__ zend_string_equals_ci (int ,int *) ;

__attribute__((used)) static zend_class_entry *lookup_class(
  zend_class_entry *scope, zend_string *name, zend_bool register_unresolved) {
 zend_class_entry *ce;
 if (!CG(in_compilation)) {
  uint32_t flags = ZEND_FETCH_CLASS_ALLOW_UNLINKED | ZEND_FETCH_CLASS_NO_AUTOLOAD;
  ce = zend_lookup_class_ex(name, ((void*)0), flags);
  if (ce) {
   return ce;
  }

  if (register_unresolved) {

   if (!CG(delayed_autoloads)) {
    ALLOC_HASHTABLE(CG(delayed_autoloads));
    zend_hash_init(CG(delayed_autoloads), 0, ((void*)0), ((void*)0), 0);
   }
   zend_hash_add_empty_element(CG(delayed_autoloads), name);
  }
 } else {
  ce = zend_lookup_class_ex(name, ((void*)0), ZEND_FETCH_CLASS_NO_AUTOLOAD);
  if (ce && class_visible(ce)) {
   return ce;
  }


  if (zend_string_equals_ci(scope->name, name)) {
   return scope;
  }
 }

 return ((void*)0);
}
