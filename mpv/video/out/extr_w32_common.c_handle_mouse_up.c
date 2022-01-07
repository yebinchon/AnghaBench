
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int input_ctx; } ;


 int MP_KEY_STATE_UP ;
 int ReleaseCapture () ;
 int mod_state (struct vo_w32_state*) ;
 int mp_input_put_key (int ,int) ;

__attribute__((used)) static void handle_mouse_up(struct vo_w32_state *w32, int btn)
{
    btn |= mod_state(w32);
    mp_input_put_key(w32->input_ctx, btn | MP_KEY_STATE_UP);

    ReleaseCapture();
}
