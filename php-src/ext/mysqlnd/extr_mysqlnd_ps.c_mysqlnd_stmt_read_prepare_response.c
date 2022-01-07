
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ enum_func_status ;
struct TYPE_17__ {int field_count; int upsert_status; int error_info; TYPE_2__* payload_decoder_factory; } ;
struct TYPE_16__ {int error_code; int param_count; int field_count; int warning_count; int stmt_id; int error_info; } ;
struct TYPE_15__ {TYPE_3__* data; } ;
struct TYPE_14__ {int param_count; int field_count; int upsert_status; int stmt_id; int error_info; TYPE_6__* conn; } ;
struct TYPE_12__ {int (* init_prepare_response_packet ) (TYPE_5__*) ;} ;
struct TYPE_13__ {TYPE_1__ m; } ;
typedef TYPE_3__ MYSQLND_STMT_DATA ;
typedef TYPE_4__ MYSQLND_STMT ;
typedef TYPE_5__ MYSQLND_PACKET_PREPARE_RESPONSE ;
typedef TYPE_6__ MYSQLND_CONN_DATA ;


 int COPY_CLIENT_ERROR (int ,int ) ;
 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,int ) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 int PACKET_FREE (TYPE_5__*) ;
 scalar_t__ PACKET_READ (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ PASS ;
 int UPSERT_STATUS_SET_AFFECTED_ROWS (int ,int ) ;
 int UPSERT_STATUS_SET_WARNINGS (int ,int ) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_read_prepare_response(MYSQLND_STMT * s)
{
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 MYSQLND_CONN_DATA * conn = stmt? stmt->conn : ((void*)0);
 MYSQLND_PACKET_PREPARE_RESPONSE prepare_resp;
 enum_func_status ret = FAIL;

 DBG_ENTER("mysqlnd_stmt_read_prepare_response");
 if (!stmt || !conn) {
  DBG_RETURN(FAIL);
 }
 DBG_INF_FMT("stmt=%lu", stmt->stmt_id);

 conn->payload_decoder_factory->m.init_prepare_response_packet(&prepare_resp);

 if (FAIL == PACKET_READ(conn, &prepare_resp)) {
  goto done;
 }

 if (0xFF == prepare_resp.error_code) {
  COPY_CLIENT_ERROR(stmt->error_info, prepare_resp.error_info);
  COPY_CLIENT_ERROR(conn->error_info, prepare_resp.error_info);
  goto done;
 }
 ret = PASS;
 stmt->stmt_id = prepare_resp.stmt_id;
 UPSERT_STATUS_SET_WARNINGS(conn->upsert_status, prepare_resp.warning_count);
 UPSERT_STATUS_SET_AFFECTED_ROWS(stmt->upsert_status, 0);
 stmt->field_count = conn->field_count = prepare_resp.field_count;
 stmt->param_count = prepare_resp.param_count;
done:
 PACKET_FREE(&prepare_resp);

 DBG_RETURN(ret);
}
