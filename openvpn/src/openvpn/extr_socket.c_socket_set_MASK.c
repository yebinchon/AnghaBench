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
struct link_socket {unsigned int rwflags_debug; } ;
struct event_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EVENT_READ ; 
 int /*<<< orphan*/  FUNC1 (struct event_set*,int /*<<< orphan*/ ,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct link_socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct link_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct link_socket*) ; 

unsigned int
FUNC5(struct link_socket *s,
           struct event_set *es,
           unsigned int rwflags,
           void *arg,
           unsigned int *persistent)
{
    if (s)
    {
        if ((rwflags & EVENT_READ) && !FUNC4(s))
        {
            FUNC0(!persistent);
            rwflags &= ~EVENT_READ;
        }

#ifdef _WIN32
        if (rwflags & EVENT_READ)
        {
            socket_recv_queue(s, 0);
        }
#endif

        /* if persistent is defined, call event_ctl only if rwflags has changed since last call */
        if (!persistent || *persistent != rwflags)
        {
            FUNC1(es, FUNC2(s), rwflags, arg);
            if (persistent)
            {
                *persistent = rwflags;
            }
        }

        s->rwflags_debug = rwflags;
    }
    return rwflags;
}