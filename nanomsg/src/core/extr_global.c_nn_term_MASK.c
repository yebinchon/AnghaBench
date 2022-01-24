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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  flags; int /*<<< orphan*/  inited; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_CTX_FLAG_TERMED ; 
 int /*<<< orphan*/  NN_CTX_FLAG_TERMING ; 
 int NN_MAX_SOCKETS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ self ; 

void FUNC4 (void)
{
    int i;

    if (!self.inited) {
        return;
    }

    FUNC2 (&self.lock);
    self.flags |= NN_CTX_FLAG_TERMING;
    FUNC3 (&self.lock);

    /* Make sure we really close resources, this will cause global
       resources to be freed too when the last socket is closed. */
    for (i = 0; i < NN_MAX_SOCKETS; i++) {
        (void) FUNC0 (i);
    }

    FUNC2 (&self.lock);
    self.flags |= NN_CTX_FLAG_TERMED;
    self.flags &= ~NN_CTX_FLAG_TERMING;
    FUNC1(&self.cond);
    FUNC3 (&self.lock);
}