
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mpv_node {int format; } ;
typedef struct mpv_node mpv_node ;
struct TYPE_4__ {int log; } ;
typedef TYPE_1__ mpv_handle ;


 int MPV_FORMAT_NONE ;
 int mp_input_parse_cmd_strv (int ,char const**) ;
 int run_client_command (TYPE_1__*,int ,struct mpv_node*) ;

int mpv_command_ret(mpv_handle *ctx, const char **args, mpv_node *result)
{
    struct mpv_node rn = {.format = MPV_FORMAT_NONE};
    int r = run_client_command(ctx, mp_input_parse_cmd_strv(ctx->log, args), &rn);
    if (result && r >= 0)
        *result = rn;
    return r;
}
