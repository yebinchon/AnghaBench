
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bound; int zv; } ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {TYPE_4__* result_bind; int field_count; int stmt_id; } ;
typedef TYPE_1__ MYSQLND_STMT_DATA ;
typedef TYPE_2__ MYSQLND_STMT ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,unsigned int const,TYPE_4__*,...) ;
 int DBG_VOID_RETURN ;
 scalar_t__ TRUE ;
 int Z_REFCOUNT (int ) ;
 scalar_t__ Z_REFCOUNTED (int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void
mysqlnd_stmt_separate_one_result_bind(MYSQLND_STMT * const s, const unsigned int param_no)
{
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 DBG_ENTER("mysqlnd_stmt_separate_one_result_bind");
 if (!stmt) {
  DBG_VOID_RETURN;
 }
 DBG_INF_FMT("stmt=%lu result_bind=%p field_count=%u param_no=%u", stmt->stmt_id, stmt->result_bind, stmt->field_count, param_no);

 if (!stmt->result_bind) {
  DBG_VOID_RETURN;
 }







 if (stmt->result_bind[param_no].bound == TRUE) {
  DBG_INF_FMT("%u has refcount=%u", param_no, Z_REFCOUNTED(stmt->result_bind[param_no].zv)? Z_REFCOUNT(stmt->result_bind[param_no].zv) : 0);
  zval_ptr_dtor(&stmt->result_bind[param_no].zv);
 }

 DBG_VOID_RETURN;
}
