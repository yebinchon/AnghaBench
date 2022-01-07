
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int win_drag_button1_down; int input_ctx; scalar_t__ no_autorepeat; } ;
struct vo {struct vo_x11_state* x11; } ;


 int MP_INPUT_RELEASE_ALL ;
 int mp_input_put_key (int ,int ) ;

__attribute__((used)) static void release_all_keys(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    if (x11->no_autorepeat)
        mp_input_put_key(x11->input_ctx, MP_INPUT_RELEASE_ALL);
    x11->win_drag_button1_down = 0;
}
