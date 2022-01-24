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
struct MPContext {scalar_t__ stop_play; scalar_t__ initialized; } ;

/* Variables and functions */
 scalar_t__ PT_QUIT ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void *FUNC4(void *p)
{
    struct MPContext *mpctx = p;

    FUNC3("mpv core");

    while (!mpctx->initialized && mpctx->stop_play != PT_QUIT)
        FUNC0(mpctx);

    if (mpctx->initialized)
        FUNC1(mpctx);

    // This actually waits until all clients are gone before actually
    // destroying mpctx. Actual destruction is done by whatever destroys
    // the last mpv_handle.
    FUNC2(mpctx);

    return NULL;
}