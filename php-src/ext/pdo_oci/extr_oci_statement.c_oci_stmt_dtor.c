
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int column_count; int * driver_data; TYPE_1__* dbh; int * bound_params; int * bound_columns; } ;
typedef TYPE_4__ pdo_stmt_t ;
struct TYPE_10__ {int * errmsg; } ;
struct TYPE_13__ {int dtype; struct TYPE_13__* cols; struct TYPE_13__* data; TYPE_3__* H; TYPE_2__ einfo; int * err; int * stmt; } ;
typedef TYPE_5__ pdo_oci_stmt ;
struct TYPE_11__ {int err; int svc; int env; } ;
struct TYPE_9__ {int is_persistent; } ;
typedef int OCILobLocator ;
typedef int HashTable ;


 int FREE_HASHTABLE (int *) ;
 int OCIDescriptorFree (TYPE_5__*,int ) ;
 int OCIHandleFree (int *,int ) ;
 int OCIStmtFetch (int *,int *,int ,int ,int ) ;
 int OCI_DEFAULT ;
 int OCI_DTYPE_LOB ;
 int OCI_FETCH_NEXT ;
 int OCI_HTYPE_ERROR ;
 int OCI_HTYPE_STMT ;
 int OCI_TEMPLOB_CLOSE (int ,int ,int ,int *) ;


 int efree (TYPE_5__*) ;
 int pefree (int *,int ) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static int oci_stmt_dtor(pdo_stmt_t *stmt)
{
 pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;
 HashTable *BC = stmt->bound_columns;
 HashTable *BP = stmt->bound_params;

 int i;

 if (S->stmt) {


  OCIStmtFetch(S->stmt, S->err, 0, OCI_FETCH_NEXT, OCI_DEFAULT);


  OCIHandleFree(S->stmt, OCI_HTYPE_STMT);
  S->stmt = ((void*)0);
 }
 if (S->err) {
  OCIHandleFree(S->err, OCI_HTYPE_ERROR);
  S->err = ((void*)0);
 }


 if (BC) {
  zend_hash_destroy(BC);
  FREE_HASHTABLE(stmt->bound_columns);
  stmt->bound_columns = ((void*)0);
 }

 if (BP) {
  zend_hash_destroy(BP);
  FREE_HASHTABLE(stmt->bound_params);
  stmt->bound_params = ((void*)0);
 }

 if (S->einfo.errmsg) {
  pefree(S->einfo.errmsg, stmt->dbh->is_persistent);
  S->einfo.errmsg = ((void*)0);
 }

 if (S->cols) {
  for (i = 0; i < stmt->column_count; i++) {
   if (S->cols[i].data) {
    switch (S->cols[i].dtype) {
     case 129:
     case 128:
      OCI_TEMPLOB_CLOSE(S->H->env, S->H->svc, S->H->err,
       (OCILobLocator *) S->cols[i].data);
      OCIDescriptorFree(S->cols[i].data, OCI_DTYPE_LOB);
      break;
     default:
      efree(S->cols[i].data);
    }
   }
  }
  efree(S->cols);
  S->cols = ((void*)0);
 }
 efree(S);

 stmt->driver_data = ((void*)0);

 return 1;
}
