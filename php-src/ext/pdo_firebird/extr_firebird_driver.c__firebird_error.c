
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_5__ {int error_code; } ;
typedef TYPE_1__ pdo_stmt_t ;
typedef int pdo_error_type ;
struct TYPE_6__ {int error_code; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int strcpy (int ,char*) ;

void _firebird_error(pdo_dbh_t *dbh, pdo_stmt_t *stmt, char const *file, zend_long line)
{
 pdo_error_type *const error_code = stmt ? &stmt->error_code : &dbh->error_code;

 strcpy(*error_code, "HY000");
}
