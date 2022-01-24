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
struct mp_client_api {struct MPContext* mpctx; } ;
struct MPContext {int /*<<< orphan*/  dispatch; } ;

/* Variables and functions */
 int /*<<< orphan*/  do_kill ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct MPContext*) ; 

void FUNC1(struct mp_client_api *client_api)
{
    struct MPContext *mpctx = client_api->mpctx;
    FUNC0(mpctx->dispatch, do_kill, mpctx);
}