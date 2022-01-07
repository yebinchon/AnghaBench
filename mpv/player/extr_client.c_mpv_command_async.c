
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int log; } ;
typedef TYPE_1__ mpv_handle ;


 int mp_input_parse_cmd_strv (int ,char const**) ;
 int run_async_cmd (TYPE_1__*,int ,int ) ;

int mpv_command_async(mpv_handle *ctx, uint64_t ud, const char **args)
{
    return run_async_cmd(ctx, ud, mp_input_parse_cmd_strv(ctx->log, args));
}
