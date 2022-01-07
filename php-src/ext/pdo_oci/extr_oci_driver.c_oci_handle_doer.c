
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_long ;
typedef scalar_t__ ub4 ;
typedef scalar_t__ ub2 ;
typedef int text ;
struct TYPE_4__ {int err; void* last_err; int svc; int env; } ;
typedef TYPE_1__ pdo_oci_db_handle ;
struct TYPE_5__ {int in_txn; scalar_t__ auto_commit; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int dvoid ;
typedef int OCIStmt ;


 int E_WARNING ;
 void* OCIAttrGet (int *,int ,scalar_t__*,int ,int ,int ) ;
 int OCIHandleAlloc (int ,int *,int ,int ,int *) ;
 int OCIHandleFree (int *,int ) ;
 void* OCIStmtExecute (int ,int *,int ,int,int ,int *,int *,int ) ;
 void* OCIStmtPrepare (int *,int ,int *,scalar_t__,int ,int ) ;
 int OCI_ATTR_ROW_COUNT ;
 int OCI_ATTR_STMT_TYPE ;
 int OCI_COMMIT_ON_SUCCESS ;
 int OCI_DEFAULT ;
 int OCI_HTYPE_STMT ;
 int OCI_NTV_SYNTAX ;
 scalar_t__ OCI_STMT_SELECT ;
 void* oci_drv_error (char*) ;
 int php_error_docref (int *,int ,char*) ;

__attribute__((used)) static zend_long oci_handle_doer(pdo_dbh_t *dbh, const char *sql, size_t sql_len)
{
 pdo_oci_db_handle *H = (pdo_oci_db_handle *)dbh->driver_data;
 OCIStmt *stmt;
 ub2 stmt_type;
 ub4 rowcount;
 int ret = -1;

 OCIHandleAlloc(H->env, (dvoid*)&stmt, OCI_HTYPE_STMT, 0, ((void*)0));

 H->last_err = OCIStmtPrepare(stmt, H->err, (text*)sql, (ub4) sql_len, OCI_NTV_SYNTAX, OCI_DEFAULT);
 if (H->last_err) {
  H->last_err = oci_drv_error("OCIStmtPrepare");
  OCIHandleFree(stmt, OCI_HTYPE_STMT);
  return -1;
 }

 H->last_err = OCIAttrGet(stmt, OCI_HTYPE_STMT, &stmt_type, 0, OCI_ATTR_STMT_TYPE, H->err);

 if (stmt_type == OCI_STMT_SELECT) {

  OCIHandleFree(stmt, OCI_HTYPE_STMT);
  php_error_docref(((void*)0), E_WARNING, "issuing a SELECT query here is invalid");
  return -1;
 }


 H->last_err = OCIStmtExecute(H->svc, stmt, H->err, 1, 0, ((void*)0), ((void*)0),
   (dbh->auto_commit && !dbh->in_txn) ? OCI_COMMIT_ON_SUCCESS : OCI_DEFAULT);

 if (H->last_err) {
  H->last_err = oci_drv_error("OCIStmtExecute");
 } else {

  H->last_err = OCIAttrGet(stmt, OCI_HTYPE_STMT, &rowcount, 0, OCI_ATTR_ROW_COUNT, H->err);
  ret = rowcount;
 }

 OCIHandleFree(stmt, OCI_HTYPE_STMT);

 return ret;
}
