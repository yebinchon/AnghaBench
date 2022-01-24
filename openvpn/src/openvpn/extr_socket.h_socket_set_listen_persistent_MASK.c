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
struct link_socket {int listen_persistent_queued; } ;
struct event_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_READ ; 
 int /*<<< orphan*/  FUNC0 (struct event_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct link_socket*) ; 

__attribute__((used)) static inline void
FUNC2(struct link_socket *s,
                             struct event_set *es,
                             void *arg)
{
    if (s && !s->listen_persistent_queued)
    {
        FUNC0(es, FUNC1(s), EVENT_READ, arg);
        s->listen_persistent_queued = true;
    }
}