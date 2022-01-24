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
struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {int /*<<< orphan*/  playlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_EVENT_CHANGE_PLAYLIST ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    FUNC1(mpctx->playlist);
    FUNC0(mpctx, MP_EVENT_CHANGE_PLAYLIST, NULL);
}