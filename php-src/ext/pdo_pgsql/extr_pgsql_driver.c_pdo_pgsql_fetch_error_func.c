
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int pdo_stmt_t ;
struct TYPE_5__ {int errmsg; scalar_t__ errcode; } ;
typedef TYPE_1__ pdo_pgsql_error_info ;
struct TYPE_6__ {TYPE_1__ einfo; } ;
typedef TYPE_2__ pdo_pgsql_db_handle ;
struct TYPE_7__ {scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_dbh_t ;


 int add_next_index_long (int *,scalar_t__) ;
 int add_next_index_string (int *,int ) ;

__attribute__((used)) static int pdo_pgsql_fetch_error_func(pdo_dbh_t *dbh, pdo_stmt_t *stmt, zval *info)
{
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
 pdo_pgsql_error_info *einfo = &H->einfo;

 if (einfo->errcode) {
  add_next_index_long(info, einfo->errcode);
  add_next_index_string(info, einfo->errmsg);
 }

 return 1;
}
