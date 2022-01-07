
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ bound; int zv; } ;
struct TYPE_10__ {TYPE_1__* m; TYPE_2__* data; } ;
struct TYPE_9__ {unsigned int field_count; TYPE_5__* result_bind; int stmt_id; } ;
struct TYPE_8__ {int (* free_result_bind ) (TYPE_3__* const,TYPE_5__*) ;} ;
typedef TYPE_2__ MYSQLND_STMT_DATA ;
typedef TYPE_3__ MYSQLND_STMT ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,unsigned int,TYPE_5__*,...) ;
 int DBG_VOID_RETURN ;
 scalar_t__ TRUE ;
 int Z_REFCOUNT (int ) ;
 scalar_t__ Z_REFCOUNTED (int ) ;
 int stub1 (TYPE_3__* const,TYPE_5__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void
mysqlnd_stmt_separate_result_bind(MYSQLND_STMT * const s)
{
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 unsigned int i;

 DBG_ENTER("mysqlnd_stmt_separate_result_bind");
 if (!stmt) {
  DBG_VOID_RETURN;
 }
 DBG_INF_FMT("stmt=%lu result_bind=%p field_count=%u", stmt->stmt_id, stmt->result_bind, stmt->field_count);

 if (!stmt->result_bind) {
  DBG_VOID_RETURN;
 }






 for (i = 0; i < stmt->field_count; i++) {

  if (stmt->result_bind[i].bound == TRUE) {
   DBG_INF_FMT("%u has refcount=%u", i, Z_REFCOUNTED(stmt->result_bind[i].zv)? Z_REFCOUNT(stmt->result_bind[i].zv) : 0);
   zval_ptr_dtor(&stmt->result_bind[i].zv);
  }
 }

 s->m->free_result_bind(s, stmt->result_bind);
 stmt->result_bind = ((void*)0);

 DBG_VOID_RETURN;
}
