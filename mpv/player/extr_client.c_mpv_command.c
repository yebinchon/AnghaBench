
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int log; } ;
typedef TYPE_1__ mpv_handle ;


 int mp_input_parse_cmd_strv (int ,char const**) ;
 int run_client_command (TYPE_1__*,int ,int *) ;

int mpv_command(mpv_handle *ctx, const char **args)
{
    return run_client_command(ctx, mp_input_parse_cmd_strv(ctx->log, args), ((void*)0));
}
