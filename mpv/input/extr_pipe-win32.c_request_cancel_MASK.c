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
struct priv {int /*<<< orphan*/  file; int /*<<< orphan*/  thread; int /*<<< orphan*/  cancel_requested; } ;
struct mp_input_src {struct priv* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_input_src*,char*) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct mp_input_src *src)
{
    struct priv *p = src->priv;

    FUNC1(src, "Exiting...\n");
    FUNC3(&p->cancel_requested, true);

    // The thread might not be peforming I/O at the exact moment when
    // CancelIoEx is called, so call it in a loop until it succeeds or the
    // thread exits
    do {
        if (FUNC0(p->file, NULL))
            break;
    } while (FUNC2(p->thread, 1) != WAIT_OBJECT_0);
}