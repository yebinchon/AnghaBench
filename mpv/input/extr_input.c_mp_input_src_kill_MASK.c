#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_input_src {int /*<<< orphan*/  (* uninit ) (struct mp_input_src*) ;TYPE_1__* in; int /*<<< orphan*/  (* cancel ) (struct mp_input_src*) ;struct input_ctx* input_ctx; } ;
struct input_ctx {int num_sources; struct mp_input_src** sources; } ;
struct TYPE_2__ {int /*<<< orphan*/  thread; scalar_t__ thread_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_input_src**,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_input_src*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_input_src*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_input_src*) ; 

__attribute__((used)) static void FUNC8(struct mp_input_src *src)
{
    if (!src)
        return;
    struct input_ctx *ictx = src->input_ctx;
    FUNC2(ictx);
    for (int n = 0; n < ictx->num_sources; n++) {
        if (ictx->sources[n] == src) {
            FUNC0(ictx->sources, ictx->num_sources, n);
            FUNC3(ictx);
            if (src->cancel)
                src->cancel(src);
            if (src->in->thread_running)
                FUNC4(src->in->thread, NULL);
            if (src->uninit)
                src->uninit(src);
            FUNC7(src);
            return;
        }
    }
    FUNC1();
}