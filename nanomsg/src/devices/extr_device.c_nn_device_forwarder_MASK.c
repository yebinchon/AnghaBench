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
struct nn_device_forwarder_args {scalar_t__ rc; int /*<<< orphan*/  err; int /*<<< orphan*/  s2; int /*<<< orphan*/  s1; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3 (void *a)
{
    struct nn_device_forwarder_args *args = a;
    for (;;) {
        args->rc = FUNC0 (args->device, args->s1, args->s2, 0);
        if (FUNC2 (args->rc < 0)) {
            args->err = FUNC1 ();
            return;
        }
    }
}