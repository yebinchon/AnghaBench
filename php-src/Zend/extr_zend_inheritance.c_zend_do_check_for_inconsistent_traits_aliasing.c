
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ method_name; } ;
struct TYPE_7__ {TYPE_1__ trait_method; scalar_t__ alias; } ;
typedef TYPE_2__ zend_trait_alias ;
typedef int zend_string ;
struct TYPE_8__ {int function_table; TYPE_2__** trait_aliases; } ;
typedef TYPE_3__ zend_class_entry ;


 int E_COMPILE_ERROR ;
 int ZSTR_VAL (scalar_t__) ;
 int zend_error_noreturn (int ,char*,int ,...) ;
 scalar_t__ zend_hash_exists (int *,int *) ;
 int zend_string_release_ex (int *,int ) ;
 int * zend_string_tolower (scalar_t__) ;

__attribute__((used)) static void zend_do_check_for_inconsistent_traits_aliasing(zend_class_entry *ce, zend_class_entry **aliases)
{
 int i = 0;
 zend_trait_alias* cur_alias;
 zend_string* lc_method_name;

 if (ce->trait_aliases) {
  while (ce->trait_aliases[i]) {
   cur_alias = ce->trait_aliases[i];


   if (!aliases[i]) {
    if (cur_alias->alias) {

     zend_error_noreturn(E_COMPILE_ERROR,
          "An alias (%s) was defined for method %s(), but this method does not exist",
          ZSTR_VAL(cur_alias->alias),
          ZSTR_VAL(cur_alias->trait_method.method_name));
    } else {
     lc_method_name = zend_string_tolower(
      cur_alias->trait_method.method_name);
     if (zend_hash_exists(&ce->function_table,
           lc_method_name)) {
      zend_string_release_ex(lc_method_name, 0);
      zend_error_noreturn(E_COMPILE_ERROR,
           "The modifiers for the trait alias %s() need to be changed in the same statement in which the alias is defined. Error",
           ZSTR_VAL(cur_alias->trait_method.method_name));
     } else {
      zend_string_release_ex(lc_method_name, 0);
      zend_error_noreturn(E_COMPILE_ERROR,
           "The modifiers of the trait method %s() are changed, but this method does not exist. Error",
           ZSTR_VAL(cur_alias->trait_method.method_name));

     }
    }
   }
   i++;
  }
 }
}
