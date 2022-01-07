
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_opts {double ar_rate; double ar_delay; } ;
struct input_ctx {scalar_t__ ar_state; scalar_t__ last_key_down; struct input_opts* opts; } ;


 double MPMIN (double,double) ;

__attribute__((used)) static void adjust_max_wait_time(struct input_ctx *ictx, double *time)
{
    struct input_opts *opts = ictx->opts;
    if (ictx->last_key_down && opts->ar_rate > 0 && ictx->ar_state >= 0) {
        *time = MPMIN(*time, 1.0 / opts->ar_rate);
        *time = MPMIN(*time, opts->ar_delay / 1000.0);
    }
}
