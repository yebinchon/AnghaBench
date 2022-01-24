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
struct TYPE_2__ {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int NN_CTX_FLAG_TERMED ; 
 int NN_CTX_FLAG_TERMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nn_lib_init ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  once ; 
 TYPE_1__ self ; 

void FUNC4 (void)
{
    FUNC1 (&once, nn_lib_init);

    FUNC2 (&self.lock);
    /*  Wait for any in progress term to complete. */
    while (self.flags & NN_CTX_FLAG_TERMING) {
        FUNC0 (&self.cond, &self.lock, -1);
    }
    self.flags &= ~NN_CTX_FLAG_TERMED;
    FUNC3 (&self.lock);
}