#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct input_opts {double ar_rate; double ar_delay; } ;
struct input_ctx {scalar_t__ ar_state; scalar_t__ last_key_down; struct input_opts* opts; } ;

/* Variables and functions */
 double FUNC0 (double,double) ; 

__attribute__((used)) static void FUNC1(struct input_ctx *ictx, double *time)
{
    struct input_opts *opts = ictx->opts;
    if (ictx->last_key_down && opts->ar_rate > 0 && ictx->ar_state >= 0) {
        *time = FUNC0(*time, 1.0 / opts->ar_rate);
        *time = FUNC0(*time, opts->ar_delay / 1000.0);
    }
}