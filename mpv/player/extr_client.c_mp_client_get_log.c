
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_handle {struct mp_log* log; } ;
struct mp_log {int dummy; } ;



struct mp_log *mp_client_get_log(struct mpv_handle *ctx)
{
    return ctx->log;
}
