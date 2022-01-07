
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zend_long ;
typedef int ub4 ;
typedef int sb4 ;
struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {scalar_t__ last_err; int err; int stmt; } ;
typedef TYPE_2__ pdo_oci_stmt ;
typedef enum pdo_fetch_orientation { ____Placeholder_pdo_fetch_orientation } pdo_fetch_orientation ;


 scalar_t__ OCIStmtFetch (int ,int ,int,int ,int ) ;
 scalar_t__ OCIStmtFetch2 (int ,int ,int,int ,int ,int ) ;
 int OCI_DEFAULT ;
 int OCI_FETCH_ABSOLUTE ;
 int OCI_FETCH_FIRST ;
 int OCI_FETCH_LAST ;
 int OCI_FETCH_NEXT ;
 int OCI_FETCH_PRIOR ;
 int OCI_FETCH_RELATIVE ;
 scalar_t__ OCI_NEED_DATA ;
 scalar_t__ OCI_NO_DATA ;
 scalar_t__ OCI_SUCCESS ;
 scalar_t__ OCI_SUCCESS_WITH_INFO ;






 int oci_stmt_error (char*) ;

__attribute__((used)) static int oci_stmt_fetch(pdo_stmt_t *stmt, enum pdo_fetch_orientation ori, zend_long offset)
{



 pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;
 S->last_err = OCIStmtFetch(S->stmt, S->err, 1, OCI_FETCH_NEXT, OCI_DEFAULT);


 if (S->last_err == OCI_NO_DATA) {

  return 0;
 }

 if (S->last_err == OCI_NEED_DATA) {
  oci_stmt_error("OCI_NEED_DATA");
  return 0;
 }

 if (S->last_err == OCI_SUCCESS_WITH_INFO || S->last_err == OCI_SUCCESS) {
  return 1;
 }

 oci_stmt_error("OCIStmtFetch");

 return 0;
}
