
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_opts {double doubleclick_time; int enable_mouse_movements; } ;
struct input_ctx {int last_doubleclick_key_down; double last_doubleclick_time; struct input_opts* opts; } ;


 int MP_INPUT_RELEASE_ALL ;
 scalar_t__ MP_KEY_IS_MOUSE (int) ;
 scalar_t__ MP_KEY_IS_MOUSE_BTN_DBL (int) ;
 scalar_t__ MP_KEY_IS_WHEEL (int) ;
 int MP_KEY_MODIFIER_MASK ;
 int MP_KEY_MOUSE_ENTER ;
 int MP_KEY_MOUSE_LEAVE ;
 int MP_KEY_STATE_DOWN ;
 int MP_MBTN_BASE ;
 int MP_MBTN_DBL_BASE ;
 int MP_MBTN_LEFT ;
 int MP_MBTN_RIGHT ;
 int MP_TRACE (struct input_ctx*,char*) ;
 int get_cmd_from_keys (struct input_ctx*,int *,int) ;
 int interpret_key (struct input_ctx*,int,int,int) ;
 int mp_input_queue_cmd (struct input_ctx*,int ) ;
 int mp_normalize_keycode (int) ;
 double mp_time_sec () ;
 int process_wheel (struct input_ctx*,int,double*,int*) ;
 int release_down_cmd (struct input_ctx*,int) ;
 int update_mouse_section (struct input_ctx*) ;

__attribute__((used)) static void mp_input_feed_key(struct input_ctx *ictx, int code, double scale,
                              bool force_mouse)
{
    struct input_opts *opts = ictx->opts;

    code = mp_normalize_keycode(code);
    int unmod = code & ~MP_KEY_MODIFIER_MASK;
    if (code == MP_INPUT_RELEASE_ALL) {
        MP_TRACE(ictx, "release all\n");
        release_down_cmd(ictx, 0);
        return;
    }
    if (!opts->enable_mouse_movements && MP_KEY_IS_MOUSE(unmod) && !force_mouse)
        return;
    if (unmod == MP_KEY_MOUSE_LEAVE || unmod == MP_KEY_MOUSE_ENTER) {
        update_mouse_section(ictx);
        mp_input_queue_cmd(ictx, get_cmd_from_keys(ictx, ((void*)0), code));
        return;
    }
    double now = mp_time_sec();

    if (!force_mouse && opts->doubleclick_time && MP_KEY_IS_MOUSE_BTN_DBL(unmod))
        return;
    int units = 1;
    if (MP_KEY_IS_WHEEL(unmod) && !process_wheel(ictx, unmod, &scale, &units))
        return;
    interpret_key(ictx, code, scale, units);
    if (code & MP_KEY_STATE_DOWN) {
        code &= ~MP_KEY_STATE_DOWN;
        if (ictx->last_doubleclick_key_down == code &&
            now - ictx->last_doubleclick_time < opts->doubleclick_time / 1000.0)
        {
            if (code >= MP_MBTN_LEFT && code <= MP_MBTN_RIGHT) {
                interpret_key(ictx, code - MP_MBTN_BASE + MP_MBTN_DBL_BASE,
                              1, 1);
            }
        }
        ictx->last_doubleclick_key_down = code;
        ictx->last_doubleclick_time = now;
    }
}
