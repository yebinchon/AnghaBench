
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int log; } ;


 int mp_input_parse_cmd_strv (int ,char const**) ;
 int mp_input_queue_cmd (struct input_ctx*,int ) ;

void mp_input_run_cmd(struct input_ctx *ictx, const char **cmd)
{
    mp_input_queue_cmd(ictx, mp_input_parse_cmd_strv(ictx->log, cmd));
}
