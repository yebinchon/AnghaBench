
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int input_ctx; } ;


 int MP_WHEEL_DOWN ;
 int MP_WHEEL_LEFT ;
 int MP_WHEEL_RIGHT ;
 int MP_WHEEL_UP ;
 int abs (int) ;
 int mod_state (struct vo_w32_state*) ;
 int mp_input_put_wheel (int ,int,int) ;

__attribute__((used)) static void handle_mouse_wheel(struct vo_w32_state *w32, bool horiz, int val)
{
    int code;
    if (horiz)
        code = val > 0 ? MP_WHEEL_RIGHT : MP_WHEEL_LEFT;
    else
        code = val > 0 ? MP_WHEEL_UP : MP_WHEEL_DOWN;
    mp_input_put_wheel(w32->input_ctx, code | mod_state(w32), abs(val) / 120.);
}
