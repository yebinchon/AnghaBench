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
struct command_ctx {double last_seek_time; scalar_t__ last_seek_pts; } ;
struct MPContext {struct command_ctx* command_ctx; } ;

/* Variables and functions */
 scalar_t__ MP_NOPTS_VALUE ; 
 scalar_t__ FUNC0 (struct MPContext*) ; 
 double FUNC1 () ; 

void FUNC2(struct MPContext *mpctx)
{
    struct command_ctx *cmd = mpctx->command_ctx;
    double now = FUNC1();
    if (now > cmd->last_seek_time + 2.0 || cmd->last_seek_pts == MP_NOPTS_VALUE)
        cmd->last_seek_pts = FUNC0(mpctx);
    cmd->last_seek_time = now;
}