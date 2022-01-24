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
typedef  int /*<<< orphan*/  uint8_t ;
struct free_dr_context {struct dr_helper* dr; } ;
struct dr_helper {int /*<<< orphan*/  dispatch; int /*<<< orphan*/  thread_lock; int /*<<< orphan*/  thread; scalar_t__ thread_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct free_dr_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct free_dr_context*),struct free_dr_context*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *opaque, uint8_t *data)
{
    struct free_dr_context *ctx = opaque;
    struct dr_helper *dr = ctx->dr;

    FUNC3(&dr->thread_lock);
    bool on_this_thread =
        dr->thread_valid && FUNC2(ctx->dr->thread, FUNC5());
    FUNC4(&dr->thread_lock);

    // The image could be unreffed even on the DR thread. In practice, this
    // matters most on DR destruction.
    if (on_this_thread) {
        FUNC0(ctx);
    } else {
        FUNC1(dr->dispatch, dr_thread_free, ctx);
    }
}