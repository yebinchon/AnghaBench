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
struct tuntap {unsigned int rwflags_debug; } ;
struct event_set {int dummy; } ;

/* Variables and functions */
 unsigned int EVENT_READ ; 
 int /*<<< orphan*/  FUNC0 (struct event_set*,int /*<<< orphan*/ ,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct tuntap*) ; 
 int /*<<< orphan*/  FUNC2 (struct tuntap*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tuntap*) ; 

__attribute__((used)) static inline void
FUNC4(struct tuntap *tt,
        struct event_set *es,
        unsigned int rwflags,
        void *arg,
        unsigned int *persistent)
{
    if (FUNC3(tt))
    {
        /* if persistent is defined, call event_ctl only if rwflags has changed since last call */
        if (!persistent || *persistent != rwflags)
        {
            FUNC0(es, FUNC1(tt), rwflags, arg);
            if (persistent)
            {
                *persistent = rwflags;
            }
        }
#ifdef _WIN32
        if (rwflags & EVENT_READ)
        {
            tun_read_queue(tt, 0);
        }
#endif
        tt->rwflags_debug = rwflags;
    }
}