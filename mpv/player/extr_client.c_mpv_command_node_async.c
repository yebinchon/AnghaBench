
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int mpv_node ;
struct TYPE_4__ {int log; } ;
typedef TYPE_1__ mpv_handle ;


 int mp_input_parse_cmd_node (int ,int *) ;
 int run_async_cmd (TYPE_1__*,int ,int ) ;

int mpv_command_node_async(mpv_handle *ctx, uint64_t ud, mpv_node *args)
{
    return run_async_cmd(ctx, ud, mp_input_parse_cmd_node(ctx->log, args));
}
