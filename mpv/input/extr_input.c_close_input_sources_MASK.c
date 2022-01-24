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
struct mp_input_src {int dummy; } ;
struct input_ctx {struct mp_input_src** sources; scalar_t__ num_sources; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_input_src*) ; 

__attribute__((used)) static void FUNC3(struct input_ctx *ictx)
{
    // To avoid lock-order issues, we first remove each source from the context,
    // and then destroy it.
    while (1) {
        FUNC0(ictx);
        struct mp_input_src *src = ictx->num_sources ? ictx->sources[0] : NULL;
        FUNC1(ictx);
        if (!src)
            break;
        FUNC2(src);
    }
}