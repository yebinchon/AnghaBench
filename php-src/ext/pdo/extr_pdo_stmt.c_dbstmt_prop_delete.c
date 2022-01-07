
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_object ;
struct TYPE_4__ {int dbh; } ;
typedef TYPE_1__ pdo_stmt_t ;


 int ZSTR_VAL (int *) ;
 int pdo_raise_impl_error (int ,TYPE_1__*,char*,char*) ;
 TYPE_1__* php_pdo_stmt_fetch_object (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int zend_std_unset_property (int *,int *,void**) ;

__attribute__((used)) static void dbstmt_prop_delete(zend_object *object, zend_string *name, void **cache_slot)
{
 pdo_stmt_t *stmt = php_pdo_stmt_fetch_object(object);

 if (strcmp(ZSTR_VAL(name), "queryString") == 0) {
  pdo_raise_impl_error(stmt->dbh, stmt, "HY000", "property queryString is read only");
 } else {
  zend_std_unset_property(object, name, cache_slot);
 }
}
