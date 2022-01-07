
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* errmsg; } ;
struct TYPE_7__ {TYPE_1__ einfo; int * env; scalar_t__ charset; int * err; int * server; scalar_t__ attached; scalar_t__ last_err; int * svc; int * session; } ;
typedef TYPE_2__ pdo_oci_db_handle ;
struct TYPE_8__ {int is_persistent; scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_dbh_t ;


 int OCIHandleFree (int *,int ) ;
 scalar_t__ OCIServerDetach (int *,int *,int ) ;
 int OCITransRollback (int *,int *,int ) ;
 int OCI_DEFAULT ;
 int OCI_HTYPE_ENV ;
 int OCI_HTYPE_ERROR ;
 int OCI_HTYPE_SERVER ;
 int OCI_HTYPE_SESSION ;
 int OCI_HTYPE_SVCCTX ;
 int oci_drv_error (char*) ;
 int pefree (TYPE_2__*,int ) ;

__attribute__((used)) static int oci_handle_closer(pdo_dbh_t *dbh)
{
 pdo_oci_db_handle *H = (pdo_oci_db_handle *)dbh->driver_data;

 if (H->svc) {

  OCITransRollback(H->svc, H->err, 0);
 }

 if (H->session) {
  OCIHandleFree(H->session, OCI_HTYPE_SESSION);
  H->session = ((void*)0);
 }

 if (H->svc) {
  OCIHandleFree(H->svc, OCI_HTYPE_SVCCTX);
  H->svc = ((void*)0);
 }

 if (H->server && H->attached) {
  H->last_err = OCIServerDetach(H->server, H->err, OCI_DEFAULT);
  if (H->last_err) {
   oci_drv_error("OCIServerDetach");
  }
  H->attached = 0;
 }

 if (H->server) {
  OCIHandleFree(H->server, OCI_HTYPE_SERVER);
  H->server = ((void*)0);
 }

 if (H->err) {
  OCIHandleFree(H->err, OCI_HTYPE_ERROR);
  H->err = ((void*)0);
 }

 if (H->charset && H->env) {
  OCIHandleFree(H->env, OCI_HTYPE_ENV);
  H->env = ((void*)0);
 }

 if (H->einfo.errmsg) {
  pefree(H->einfo.errmsg, dbh->is_persistent);
  H->einfo.errmsg = ((void*)0);
 }

 pefree(H, dbh->is_persistent);

 return 0;
}
