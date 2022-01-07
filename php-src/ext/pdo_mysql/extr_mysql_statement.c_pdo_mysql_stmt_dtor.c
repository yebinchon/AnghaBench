
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int column_count; int database_object_handle; TYPE_1__* dbh; scalar_t__ driver_data; } ;
typedef TYPE_4__ pdo_stmt_t ;
struct TYPE_11__ {int * errmsg; } ;
struct TYPE_14__ {scalar_t__ current_data; int * stmt; TYPE_3__* H; struct TYPE_14__* out_length; struct TYPE_14__* out_null; struct TYPE_14__* bound_result; struct TYPE_14__* in_length; struct TYPE_14__* in_null; struct TYPE_14__* params; TYPE_2__ einfo; int * result; } ;
typedef TYPE_5__ pdo_mysql_stmt ;
struct TYPE_15__ {int * object_buckets; } ;
struct TYPE_12__ {int server; } ;
struct TYPE_10__ {int is_persistent; } ;
typedef int MYSQL_RES ;


 TYPE_9__ EG (int ) ;
 int IS_OBJ_FREE_CALLED ;
 scalar_t__ IS_OBJ_VALID (int ) ;
 int OBJ_FLAGS (int ) ;
 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,int *) ;
 int PDO_DBG_RETURN (int) ;
 int Z_ISUNDEF (int ) ;
 int Z_OBJ (int ) ;
 size_t Z_OBJ_HANDLE (int ) ;
 int efree (TYPE_5__*) ;
 int mnd_free (scalar_t__) ;
 int mysql_free_result (int *) ;
 scalar_t__ mysql_more_results (int ) ;
 scalar_t__ mysql_next_result (int ) ;
 int * mysql_store_result (int ) ;
 int objects_store ;
 int pdo_free_bound_result (TYPE_5__) ;
 int pdo_mysql_stmt_close (int *) ;
 int pefree (int *,int ) ;

__attribute__((used)) static int pdo_mysql_stmt_dtor(pdo_stmt_t *stmt)
{
 pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;

 PDO_DBG_ENTER("pdo_mysql_stmt_dtor");
 PDO_DBG_INF_FMT("stmt=%p", S->stmt);
 if (S->result) {

  mysql_free_result(S->result);
  S->result = ((void*)0);
 }
 if (S->einfo.errmsg) {
  pefree(S->einfo.errmsg, stmt->dbh->is_persistent);
  S->einfo.errmsg = ((void*)0);
 }
 if (S->stmt) {
  pdo_mysql_stmt_close(S->stmt);
  S->stmt = ((void*)0);
 }


 if (S->params) {
  efree(S->params);
 }
 if (S->in_null) {
  efree(S->in_null);
 }
 if (S->in_length) {
  efree(S->in_length);
 }

 if (S->bound_result)
 {
  int i;
  for (i = 0; i < stmt->column_count; i++) {
   pdo_free_bound_result(S->bound_result[i]);
  }

  efree(S->bound_result);
  efree(S->out_null);
  efree(S->out_length);
 }


 if (!Z_ISUNDEF(stmt->database_object_handle)
  && IS_OBJ_VALID(EG(objects_store).object_buckets[Z_OBJ_HANDLE(stmt->database_object_handle)])
  && (!(OBJ_FLAGS(Z_OBJ(stmt->database_object_handle)) & IS_OBJ_FREE_CALLED))) {
  while (mysql_more_results(S->H->server)) {
   MYSQL_RES *res;
   if (mysql_next_result(S->H->server) != 0) {
    break;
   }

   res = mysql_store_result(S->H->server);
   if (res) {
    mysql_free_result(res);
   }
  }
 }







 efree(S);
 PDO_DBG_RETURN(1);
}
