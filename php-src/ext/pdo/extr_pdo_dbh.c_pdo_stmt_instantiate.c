
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int constructor; } ;
typedef TYPE_1__ zend_class_entry ;
typedef int pdo_dbh_t ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ SUCCESS ;
 scalar_t__ UNEXPECTED (int) ;
 int Z_ISUNDEF_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 scalar_t__ object_init_ex (int *,TYPE_1__*) ;
 int pdo_raise_impl_error (int *,int *,char*,char*) ;

__attribute__((used)) static zval *pdo_stmt_instantiate(pdo_dbh_t *dbh, zval *object, zend_class_entry *dbstmt_ce, zval *ctor_args)
{
 if (!Z_ISUNDEF_P(ctor_args)) {
  if (Z_TYPE_P(ctor_args) != IS_ARRAY) {
   pdo_raise_impl_error(dbh, ((void*)0), "HY000", "constructor arguments must be passed as an array");
   return ((void*)0);
  }
  if (!dbstmt_ce->constructor) {
   pdo_raise_impl_error(dbh, ((void*)0), "HY000", "user-supplied statement does not accept constructor arguments");
   return ((void*)0);
  }
 }

 if (UNEXPECTED(object_init_ex(object, dbstmt_ce) != SUCCESS)) {
  return ((void*)0);
 }

 return object;
}
