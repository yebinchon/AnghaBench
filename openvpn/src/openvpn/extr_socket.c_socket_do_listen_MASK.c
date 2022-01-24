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
struct gc_arena {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addr; } ;
typedef  int /*<<< orphan*/  socket_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addrinfo const*) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct gc_arena*) ; 
 struct gc_arena FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(socket_descriptor_t sd,
                 const struct addrinfo *local,
                 bool do_listen,
                 bool do_set_nonblock)
{
    struct gc_arena gc = FUNC2();
    if (do_listen)
    {
        FUNC0(local);
        FUNC4(M_INFO, "Listening for incoming TCP connection on %s",
            FUNC5(local->ai_addr, &gc));
        if (FUNC3(sd, 32))
        {
            FUNC4(M_ERR, "TCP: listen() failed");
        }
    }

    /* set socket to non-blocking mode */
    if (do_set_nonblock)
    {
        FUNC6(sd);
    }

    FUNC1(&gc);
}