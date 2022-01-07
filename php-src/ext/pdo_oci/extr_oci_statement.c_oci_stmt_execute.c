
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ub4 ;
struct TYPE_10__ {int column_count; long row_count; scalar_t__ executed; TYPE_1__* dbh; scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_stmt_t ;
struct TYPE_11__ {scalar_t__ stmt_type; scalar_t__ exec_type; int err; int stmt; TYPE_6__* cols; int have_blobs; TYPE_2__* H; } ;
typedef TYPE_4__ pdo_oci_stmt ;
typedef int pdo_oci_column ;
typedef scalar_t__ b4 ;
struct TYPE_12__ {int dtype; struct TYPE_12__* data; } ;
struct TYPE_9__ {int svc; } ;
struct TYPE_8__ {int in_txn; scalar_t__ auto_commit; } ;


 int OCIAttrGet ;
 int OCIStmtExecute ;
 int OCIStmtFetch (int ,int ,int ,int ,scalar_t__) ;
 int OCI_ATTR_PARAM_COUNT ;
 int OCI_ATTR_ROW_COUNT ;
 int OCI_ATTR_STMT_TYPE ;
 scalar_t__ OCI_COMMIT_ON_SUCCESS ;
 scalar_t__ OCI_DEFAULT ;
 int OCI_FETCH_NEXT ;
 int OCI_HTYPE_STMT ;
 scalar_t__ OCI_STMT_SCROLLABLE_READONLY ;
 scalar_t__ OCI_STMT_SELECT ;


 int STMT_CALL (int ,int ) ;
 int STMT_CALL_MSG (int ,char*,int ) ;
 TYPE_6__* ecalloc (scalar_t__,int) ;
 int efree (TYPE_6__*) ;

__attribute__((used)) static int oci_stmt_execute(pdo_stmt_t *stmt)
{
 pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;
 ub4 rowcount;
 b4 mode;

 if (!S->stmt_type) {
  STMT_CALL_MSG(OCIAttrGet, "OCI_ATTR_STMT_TYPE",
    (S->stmt, OCI_HTYPE_STMT, &S->stmt_type, 0, OCI_ATTR_STMT_TYPE, S->err));
 }

 if (stmt->executed) {

  OCIStmtFetch(S->stmt, S->err, 0, OCI_FETCH_NEXT, OCI_DEFAULT);
 }






 if (stmt->dbh->auto_commit && !stmt->dbh->in_txn) {
  mode = OCI_COMMIT_ON_SUCCESS;
 } else {
  mode = OCI_DEFAULT;
 }

 STMT_CALL(OCIStmtExecute, (S->H->svc, S->stmt, S->err,
    (S->stmt_type == OCI_STMT_SELECT && !S->have_blobs) ? 0 : 1, 0, ((void*)0), ((void*)0),
    mode));

 if (!stmt->executed) {
  ub4 colcount;



  STMT_CALL_MSG(OCIAttrGet, "ATTR_PARAM_COUNT",
    (S->stmt, OCI_HTYPE_STMT, &colcount, 0, OCI_ATTR_PARAM_COUNT, S->err));

  stmt->column_count = (int)colcount;

  if (S->cols) {
   int i;
   for (i = 0; i < stmt->column_count; i++) {
    if (S->cols[i].data) {
     switch (S->cols[i].dtype) {
      case 129:
      case 128:

       break;
      default:
       efree(S->cols[i].data);
     }
    }
   }
   efree(S->cols);
  }

  S->cols = ecalloc(colcount, sizeof(pdo_oci_column));
 }

 STMT_CALL_MSG(OCIAttrGet, "ATTR_ROW_COUNT",
   (S->stmt, OCI_HTYPE_STMT, &rowcount, 0, OCI_ATTR_ROW_COUNT, S->err));
 stmt->row_count = (long)rowcount;

 return 1;
}
