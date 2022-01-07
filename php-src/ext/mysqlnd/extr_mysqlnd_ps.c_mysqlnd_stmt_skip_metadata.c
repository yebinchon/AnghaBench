
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
struct TYPE_17__ {TYPE_2__* payload_decoder_factory; } ;
struct TYPE_16__ {int skip_parsing; int * memory_pool; } ;
struct TYPE_15__ {TYPE_3__* data; } ;
struct TYPE_14__ {unsigned int param_count; int stmt_id; TYPE_6__* conn; } ;
struct TYPE_12__ {int (* init_result_field_packet ) (TYPE_5__*) ;} ;
struct TYPE_13__ {TYPE_1__ m; } ;
typedef TYPE_3__ MYSQLND_STMT_DATA ;
typedef TYPE_4__ MYSQLND_STMT ;
typedef TYPE_5__ MYSQLND_PACKET_RES_FIELD ;
typedef int MYSQLND_MEMORY_POOL ;
typedef TYPE_6__ MYSQLND_CONN_DATA ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,int ) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 int MYSQLND_G (int ) ;
 int PACKET_FREE (TYPE_5__*) ;
 scalar_t__ PACKET_READ (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ PASS ;
 int TRUE ;
 int mempool_default_size ;
 int * mysqlnd_mempool_create (int ) ;
 int mysqlnd_mempool_destroy (int *) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_skip_metadata(MYSQLND_STMT * s)
{
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 MYSQLND_CONN_DATA * conn = stmt? stmt->conn : ((void*)0);

 unsigned int i = 0;
 enum_func_status ret = FAIL;
 MYSQLND_PACKET_RES_FIELD field_packet;
 MYSQLND_MEMORY_POOL * pool;

 DBG_ENTER("mysqlnd_stmt_skip_metadata");
 if (!stmt || !conn) {
  DBG_RETURN(FAIL);
 }
 pool = mysqlnd_mempool_create(MYSQLND_G(mempool_default_size));
 if (!pool) {
  DBG_RETURN(FAIL);
 }
 DBG_INF_FMT("stmt=%lu", stmt->stmt_id);

 conn->payload_decoder_factory->m.init_result_field_packet(&field_packet);
 field_packet.memory_pool = pool;

 ret = PASS;
 field_packet.skip_parsing = TRUE;
 for (;i < stmt->param_count; i++) {
  if (FAIL == PACKET_READ(conn, &field_packet)) {
   ret = FAIL;
   break;
  }
 }
 PACKET_FREE(&field_packet);
 mysqlnd_mempool_destroy(pool);

 DBG_RETURN(ret);
}
