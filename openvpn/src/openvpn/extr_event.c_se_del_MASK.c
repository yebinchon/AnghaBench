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
struct se_set {size_t capacity; int /*<<< orphan*/ ** args; int /*<<< orphan*/  writefds; int /*<<< orphan*/  readfds; int /*<<< orphan*/  fast; } ;
struct event_set {int dummy; } ;
typedef  size_t event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  D_EVENT_ERRORS ; 
 int /*<<< orphan*/  D_EVENT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct event_set *es, event_t event)
{
    struct se_set *ses = (struct se_set *) es;
    FUNC0(!ses->fast);

    FUNC2(D_EVENT_WAIT, "SE_DEL ev=%d", (int)event);

    if (event >= 0 && event < ses->capacity)
    {
        FUNC1(event, &ses->readfds);
        FUNC1(event, &ses->writefds);
        ses->args[event] = NULL;
    }
    else
    {
        FUNC3(D_EVENT_ERRORS, "Error: select/se_del: too many I/O wait events");
    }
    return;
}