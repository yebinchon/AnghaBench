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
struct TYPE_2__ {unsigned int event_set_status; } ;
struct context {TYPE_1__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 unsigned int const MANAGEMENT_READ ; 
 unsigned int const MANAGEMENT_WRITE ; 
 unsigned int const SOCKET_READ ; 
 unsigned int const SOCKET_WRITE ; 
 unsigned int const TUN_READ ; 
 unsigned int const TUN_WRITE ; 
 int /*<<< orphan*/  management ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct context*) ; 
 int /*<<< orphan*/  FUNC4 (struct context*) ; 
 int /*<<< orphan*/  FUNC5 (struct context*) ; 
 int /*<<< orphan*/  FUNC6 (struct context*) ; 
 int /*<<< orphan*/  FUNC7 (struct context*) ; 
 int /*<<< orphan*/  FUNC8 (struct context*) ; 

void
FUNC9(struct context *c)
{
    const unsigned int status = c->c2.event_set_status;

#ifdef ENABLE_MANAGEMENT
    if (status & (MANAGEMENT_READ|MANAGEMENT_WRITE))
    {
        ASSERT(management);
        management_io(management);
    }
#endif

    /* TCP/UDP port ready to accept write */
    if (status & SOCKET_WRITE)
    {
        FUNC5(c);
    }
    /* TUN device ready to accept write */
    else if (status & TUN_WRITE)
    {
        FUNC6(c);
    }
    /* Incoming data on TCP/UDP port */
    else if (status & SOCKET_READ)
    {
        FUNC7(c);
        if (!FUNC1(c))
        {
            FUNC3(c);
        }
    }
    /* Incoming data on TUN device */
    else if (status & TUN_READ)
    {
        FUNC8(c);
        if (!FUNC1(c))
        {
            FUNC4(c);
        }
    }
}