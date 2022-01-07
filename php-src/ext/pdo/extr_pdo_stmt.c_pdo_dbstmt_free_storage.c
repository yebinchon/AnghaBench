
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int pdo_stmt_t ;


 int php_pdo_free_statement (int *) ;
 int * php_pdo_stmt_fetch_object (int *) ;

void pdo_dbstmt_free_storage(zend_object *std)
{
 pdo_stmt_t *stmt = php_pdo_stmt_fetch_object(std);
 php_pdo_free_statement(stmt);
}
