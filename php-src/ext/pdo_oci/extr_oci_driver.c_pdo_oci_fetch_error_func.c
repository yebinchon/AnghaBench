
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_10__ {scalar_t__ errmsg; scalar_t__ errcode; } ;
struct TYPE_9__ {TYPE_3__ einfo; } ;
typedef TYPE_2__ pdo_oci_stmt ;
typedef TYPE_3__ pdo_oci_error_info ;
struct TYPE_11__ {TYPE_3__ einfo; } ;
typedef TYPE_4__ pdo_oci_db_handle ;
struct TYPE_12__ {scalar_t__ driver_data; } ;
typedef TYPE_5__ pdo_dbh_t ;


 int add_next_index_long (int *,scalar_t__) ;
 int add_next_index_string (int *,scalar_t__) ;

__attribute__((used)) static int pdo_oci_fetch_error_func(pdo_dbh_t *dbh, pdo_stmt_t *stmt, zval *info)
{
 pdo_oci_db_handle *H = (pdo_oci_db_handle *)dbh->driver_data;
 pdo_oci_error_info *einfo;

 einfo = &H->einfo;

 if (stmt) {
  pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;

  if (S->einfo.errmsg) {
   einfo = &S->einfo;
  }
 }

 if (einfo->errcode) {
  add_next_index_long(info, einfo->errcode);
  add_next_index_string(info, einfo->errmsg);
 }

 return 1;
}
