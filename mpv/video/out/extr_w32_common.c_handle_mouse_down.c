
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int window; int input_ctx; int current_fs; } ;


 int HTCAPTION ;
 int MP_KEY_STATE_DOWN ;
 int MP_KEY_STATE_UP ;
 int MP_MBTN_LEFT ;
 int ReleaseCapture () ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetCapture (int ) ;
 int WM_NCLBUTTONDOWN ;
 int mod_state (struct vo_w32_state*) ;
 int mp_input_put_key (int ,int) ;
 int mp_input_test_dragging (int ,int,int) ;

__attribute__((used)) static bool handle_mouse_down(struct vo_w32_state *w32, int btn, int x, int y)
{
    btn |= mod_state(w32);
    mp_input_put_key(w32->input_ctx, btn | MP_KEY_STATE_DOWN);

    if (btn == MP_MBTN_LEFT && !w32->current_fs &&
        !mp_input_test_dragging(w32->input_ctx, x, y))
    {

        ReleaseCapture();
        SendMessage(w32->window, WM_NCLBUTTONDOWN, HTCAPTION, 0);
        mp_input_put_key(w32->input_ctx, MP_MBTN_LEFT | MP_KEY_STATE_UP);


        return 1;
    }

    SetCapture(w32->window);
    return 0;
}
