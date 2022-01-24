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
struct mp_input_src {TYPE_1__* in; } ;
struct TYPE_2__ {int thread_running; int /*<<< orphan*/  init_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void *FUNC2(void *ptr)
{
    void **args = ptr;
    struct mp_input_src *src = args[0];
    void (*loop_fn)(struct mp_input_src *src, void *ctx) = args[1];
    void *ctx = args[2];

    FUNC1("input source");

    src->in->thread_running = true;

    loop_fn(src, ctx);

    if (!src->in->init_done)
        FUNC0(&src->in->init_done, -1);

    return NULL;
}