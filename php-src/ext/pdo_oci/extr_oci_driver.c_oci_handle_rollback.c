
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ last_err; int err; int svc; } ;
typedef TYPE_1__ pdo_oci_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 scalar_t__ OCITransRollback (int ,int ,int ) ;
 scalar_t__ oci_drv_error (char*) ;

__attribute__((used)) static int oci_handle_rollback(pdo_dbh_t *dbh)
{
 pdo_oci_db_handle *H = (pdo_oci_db_handle *)dbh->driver_data;

 H->last_err = OCITransRollback(H->svc, H->err, 0);

 if (H->last_err) {
  H->last_err = oci_drv_error("OCITransRollback");
  return 0;
 }
 return 1;
}
