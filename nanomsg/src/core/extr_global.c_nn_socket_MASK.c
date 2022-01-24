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
struct TYPE_2__ {int flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ETERM ; 
 int NN_CTX_FLAG_TERM ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  nn_lib_init ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  once ; 
 TYPE_1__ self ; 

int FUNC7 (int domain, int protocol)
{
    int rc;

    FUNC0 (&once, nn_lib_init);

    FUNC4 (&self.lock);

    /*  If nn_term() was already called, return ETERM. */
    if (FUNC6 (self.flags & NN_CTX_FLAG_TERM)) {
        FUNC5 (&self.lock);
        errno = ETERM;
        return -1;
    }

    /*  Make sure that global state is initialised. */
    FUNC2 ();

    rc = FUNC1 (domain, protocol);

    if (rc < 0) {
        FUNC3 ();
        FUNC5 (&self.lock);
        errno = -rc;
        return -1;
    }

    FUNC5 (&self.lock);

    return rc;
}