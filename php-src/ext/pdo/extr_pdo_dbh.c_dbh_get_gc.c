
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_3__ {int def_stmt_ctor_args; } ;
typedef TYPE_1__ pdo_dbh_t ;
typedef int HashTable ;


 TYPE_1__* php_pdo_dbh_fetch_inner (int *) ;
 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable *dbh_get_gc(zend_object *object, zval **gc_data, int *gc_count)
{
 pdo_dbh_t *dbh = php_pdo_dbh_fetch_inner(object);
 *gc_data = &dbh->def_stmt_ctor_args;
 *gc_count = 1;
 return zend_std_get_properties(object);
}
