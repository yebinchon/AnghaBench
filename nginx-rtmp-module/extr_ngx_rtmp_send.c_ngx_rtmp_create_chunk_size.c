
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_chain_t ;
struct TYPE_6__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_RTMP_MSG_CHUNK_SIZE ;
 int NGX_RTMP_USER_END (TYPE_2__*) ;
 int NGX_RTMP_USER_OUT4 (int ) ;
 int NGX_RTMP_USER_START (TYPE_2__*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;

ngx_chain_t *
ngx_rtmp_create_chunk_size(ngx_rtmp_session_t *s, uint32_t chunk_size)
{
    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "chunk_size=%uD", chunk_size);

    {
        NGX_RTMP_USER_START(s, NGX_RTMP_MSG_CHUNK_SIZE);

        NGX_RTMP_USER_OUT4(chunk_size);

        NGX_RTMP_USER_END(s);
    }
}
