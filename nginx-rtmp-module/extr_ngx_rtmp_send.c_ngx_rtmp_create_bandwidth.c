
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_chain_t ;
struct TYPE_6__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_RTMP_MSG_BANDWIDTH ;
 int NGX_RTMP_USER_END (TYPE_2__*) ;
 int NGX_RTMP_USER_OUT1 (scalar_t__) ;
 int NGX_RTMP_USER_OUT4 (int ) ;
 int NGX_RTMP_USER_START (TYPE_2__*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int) ;

ngx_chain_t *
ngx_rtmp_create_bandwidth(ngx_rtmp_session_t *s, uint32_t ack_size,
                          uint8_t limit_type)
{
    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "create: bandwidth ack_size=%uD limit=%d",
                   ack_size, (int)limit_type);

    {
        NGX_RTMP_USER_START(s, NGX_RTMP_MSG_BANDWIDTH);

        NGX_RTMP_USER_OUT4(ack_size);
        NGX_RTMP_USER_OUT1(limit_type);

        NGX_RTMP_USER_END(s);
    }
}
