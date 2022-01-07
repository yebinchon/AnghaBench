
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int version ;
typedef int ub4 ;
typedef int text ;
typedef int sb4 ;
struct TYPE_4__ {scalar_t__ attached; scalar_t__ last_err; int err; int svc; } ;
typedef TYPE_1__ pdo_oci_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int FAILURE ;
 int OCIErrorGet (int ,int ,int *,int*,int *,int ,int ) ;
 scalar_t__ OCIPing (int ,int ,int ) ;
 scalar_t__ OCIServerVersion (int ,int ,int *,int,int ) ;
 int OCI_DEFAULT ;
 int OCI_HTYPE_ERROR ;
 int OCI_HTYPE_SVCCTX ;
 scalar_t__ OCI_SUCCESS ;
 int SUCCESS ;

__attribute__((used)) static int pdo_oci_check_liveness(pdo_dbh_t *dbh)
{
 pdo_oci_db_handle *H = (pdo_oci_db_handle *)dbh->driver_data;
 sb4 error_code = 0;

 char version[256];



 if (H->attached == 0) {
  return FAILURE;
 }
 H->last_err = OCIServerVersion (H->svc, H->err, (text *)version, sizeof(version), OCI_HTYPE_SVCCTX);

 if (H->last_err == OCI_SUCCESS) {
  return SUCCESS;
 }

 OCIErrorGet (H->err, (ub4)1, ((void*)0), &error_code, ((void*)0), 0, OCI_HTYPE_ERROR);

 if (error_code == 1010) {
  return SUCCESS;
 }
 return FAILURE;
}
