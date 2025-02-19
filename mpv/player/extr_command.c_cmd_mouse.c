
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_cmd_ctx {int success; TYPE_2__* args; struct MPContext* mpctx; } ;
struct MPContext {int input; } ;
struct TYPE_3__ {int i; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int MP_ERR (struct MPContext*,char*,int) ;
 int MP_KEY_MOUSE_BTN_COUNT ;
 int MP_MBTN_BASE ;
 int MP_MBTN_DBL_BASE ;
 int MP_MBTN_RIGHT ;
 int mp_input_put_key_artificial (int ,int) ;
 int mp_input_set_mouse_pos_artificial (int ,int const,int const) ;

__attribute__((used)) static void cmd_mouse(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    const int x = cmd->args[0].v.i, y = cmd->args[1].v.i;
    int button = cmd->args[2].v.i;
    if (button == -1) {
        mp_input_set_mouse_pos_artificial(mpctx->input, x, y);
        return;
    }
    if (button < 0 || button >= MP_KEY_MOUSE_BTN_COUNT) {
        MP_ERR(mpctx, "%d is not a valid mouse button number.\n", button);
        cmd->success = 0;
        return;
    }
    const bool dbc = cmd->args[3].v.i;
    if (dbc && button > (MP_MBTN_RIGHT - MP_MBTN_BASE)) {
        MP_ERR(mpctx, "%d is not a valid mouse button for double-clicks.\n",
               button);
        cmd->success = 0;
        return;
    }
    button += dbc ? MP_MBTN_DBL_BASE : MP_MBTN_BASE;
    mp_input_set_mouse_pos_artificial(mpctx->input, x, y);
    mp_input_put_key_artificial(mpctx->input, button);
}
