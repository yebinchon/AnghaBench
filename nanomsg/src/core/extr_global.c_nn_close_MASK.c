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
struct nn_sock {int dummy; } ;
struct TYPE_2__ {int* unused; size_t nsocks; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** socks; } ;

/* Variables and functions */
 int EINTR ; 
 size_t NN_MAX_SOCKETS ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct nn_sock*) ; 
 int FUNC1 (struct nn_sock**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_sock*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct nn_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct nn_sock*) ; 
 int FUNC9 (struct nn_sock*) ; 
 TYPE_1__ self ; 

int FUNC10 (int s)
{
    int rc;
    struct nn_sock *sock;

    FUNC4 (&self.lock);
    rc = FUNC1 (&sock, s);
    if (FUNC6 (rc < 0)) {
        FUNC5 (&self.lock);
        errno = -rc;
        return -1;
    }

    /*  Start the shutdown process on the socket.  This will cause
        all other socket users, as well as endpoints, to begin cleaning up.
        This is done with the lock held to ensure that two instances
        of nn_close can't access the same socket. */
    FUNC8 (sock);

    /*  We have to drop both the hold we just acquired, as well as
        the original hold, in order for nn_sock_term to complete. */
    FUNC7 (sock);
    FUNC7 (sock);
    FUNC5 (&self.lock);

    /*  Now clean up.  The termination routine below will block until
        all other consumers of the socket have dropped their holds, and
        all endpoints have cleanly exited. */
    rc = FUNC9 (sock);
    if (FUNC6 (rc == -EINTR)) {
        FUNC2 (sock);
        errno = EINTR;
        return -1;
    }

    /*  Remove the socket from the socket table, add it to unused socket
        table. */
    FUNC4 (&self.lock);
    self.socks [s] = NULL;
    self.unused [NN_MAX_SOCKETS - self.nsocks] = s;
    --self.nsocks;
    FUNC0 (sock);

    /*  Destroy the global context if there's no socket remaining. */
    FUNC3 ();

    FUNC5 (&self.lock);

    return 0;
}