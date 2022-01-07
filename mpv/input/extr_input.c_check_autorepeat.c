
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd {int repeated; } ;
struct input_opts {int ar_rate; int ar_delay; } ;
struct input_ctx {int last_key_down; int ar_state; scalar_t__ last_ar; scalar_t__ last_key_down_time; int current_down_cmd; struct input_opts* opts; } ;
typedef struct mp_cmd mp_cmd_t ;
typedef scalar_t__ int64_t ;


 int MP_NO_REPEAT_KEY ;
 struct mp_cmd* mp_cmd_clone (int ) ;
 int mp_input_is_repeatable_cmd (int ) ;
 scalar_t__ mp_time_us () ;

__attribute__((used)) static mp_cmd_t *check_autorepeat(struct input_ctx *ictx)
{
    struct input_opts *opts = ictx->opts;


    if (opts->ar_rate <= 0 || !ictx->current_down_cmd || !ictx->last_key_down ||
        (ictx->last_key_down & MP_NO_REPEAT_KEY) ||
        !mp_input_is_repeatable_cmd(ictx->current_down_cmd))
        ictx->ar_state = -1;

    if (ictx->ar_state >= 0) {
        int64_t t = mp_time_us();
        if (ictx->last_ar + 2000000 < t)
            ictx->last_ar = t;

        if (ictx->ar_state == 0
            && (t - ictx->last_key_down_time) >= opts->ar_delay * 1000)
        {
            ictx->ar_state = 1;
            ictx->last_ar = ictx->last_key_down_time + opts->ar_delay * 1000;

        } else if (ictx->ar_state == 1
                   && (t - ictx->last_ar) >= 1000000 / opts->ar_rate) {
            ictx->last_ar += 1000000 / opts->ar_rate;
        } else {
            return ((void*)0);
        }
        struct mp_cmd *ret = mp_cmd_clone(ictx->current_down_cmd);
        ret->repeated = 1;
        return ret;
    }
    return ((void*)0);
}
