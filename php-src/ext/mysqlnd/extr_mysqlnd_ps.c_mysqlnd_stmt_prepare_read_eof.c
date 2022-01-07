
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int enum_func_status ;
struct TYPE_16__ {int (* free_result_contents ) (TYPE_8__*) ;} ;
struct TYPE_21__ {TYPE_3__ m; } ;
struct TYPE_20__ {TYPE_2__* payload_decoder_factory; } ;
struct TYPE_19__ {int warning_count; int server_status; } ;
struct TYPE_18__ {TYPE_4__* data; } ;
struct TYPE_17__ {int state; int upsert_status; TYPE_8__* result; int stmt_id; TYPE_7__* conn; } ;
struct TYPE_14__ {int (* init_eof_packet ) (TYPE_6__*) ;} ;
struct TYPE_15__ {TYPE_1__ m; } ;
typedef TYPE_4__ MYSQLND_STMT_DATA ;
typedef TYPE_5__ MYSQLND_STMT ;
typedef TYPE_6__ MYSQLND_PACKET_EOF ;
typedef TYPE_7__ MYSQLND_CONN_DATA ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,int ) ;
 int DBG_RETURN (int ) ;
 int FAIL ;
 int MYSQLND_STMT_INITTED ;
 int MYSQLND_STMT_PREPARED ;
 int PACKET_READ (TYPE_7__*,TYPE_6__*) ;
 int UPSERT_STATUS_SET_SERVER_STATUS (int ,int ) ;
 int UPSERT_STATUS_SET_WARNINGS (int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (TYPE_6__*) ;
 int stub2 (TYPE_8__*) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_prepare_read_eof(MYSQLND_STMT * s)
{
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 MYSQLND_CONN_DATA * conn = stmt? stmt->conn : ((void*)0);
 MYSQLND_PACKET_EOF fields_eof;
 enum_func_status ret = FAIL;

 DBG_ENTER("mysqlnd_stmt_prepare_read_eof");
 if (!stmt || !conn) {
  DBG_RETURN(FAIL);
 }
 DBG_INF_FMT("stmt=%lu", stmt->stmt_id);

 conn->payload_decoder_factory->m.init_eof_packet(&fields_eof);
 if (FAIL == (ret = PACKET_READ(conn, &fields_eof))) {
  if (stmt->result) {
   stmt->result->m.free_result_contents(stmt->result);





   memset(stmt, 0, sizeof(MYSQLND_STMT_DATA));
   stmt->state = MYSQLND_STMT_INITTED;
  }
 } else {
  UPSERT_STATUS_SET_SERVER_STATUS(stmt->upsert_status, fields_eof.server_status);
  UPSERT_STATUS_SET_WARNINGS(stmt->upsert_status, fields_eof.warning_count);
  stmt->state = MYSQLND_STMT_PREPARED;
 }

 DBG_RETURN(ret);
}
