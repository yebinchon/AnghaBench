
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; TYPE_1__* mpctx; } ;
typedef TYPE_2__ mpv_handle ;
struct TYPE_5__ {int input; } ;


 int bstr0 (char*) ;
 int mp_input_parse_cmd (int ,int ,int ) ;
 int run_client_command (TYPE_2__*,int ,int *) ;

int mpv_command_string(mpv_handle *ctx, const char *args)
{
    return run_client_command(ctx,
        mp_input_parse_cmd(ctx->mpctx->input, bstr0((char*)args), ctx->name), ((void*)0));
}
