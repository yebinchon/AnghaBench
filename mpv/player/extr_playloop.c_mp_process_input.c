
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int input; } ;
typedef int mp_cmd_t ;


 int mp_input_get_delay (int ) ;
 int * mp_input_read_cmd (int ) ;
 int mp_set_timeout (struct MPContext*,int ) ;
 int run_command (struct MPContext*,int *,int *,int *,int *) ;

void mp_process_input(struct MPContext *mpctx)
{
    for (;;) {
        mp_cmd_t *cmd = mp_input_read_cmd(mpctx->input);
        if (!cmd)
            break;
        run_command(mpctx, cmd, ((void*)0), ((void*)0), ((void*)0));
    }
    mp_set_timeout(mpctx, mp_input_get_delay(mpctx->input));
}
