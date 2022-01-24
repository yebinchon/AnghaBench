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
struct options {int /*<<< orphan*/  ce; TYPE_1__* connection_list; int /*<<< orphan*/  log; int /*<<< orphan*/  daemon; int /*<<< orphan*/  verbosity; int /*<<< orphan*/  config; } ;
struct env_set {int dummy; } ;
struct TYPE_2__ {int len; int /*<<< orphan*/ ** array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct env_set*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct env_set*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct env_set*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct env_set*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct env_set *es, const struct options *o)
{
    FUNC4(es, "config", o->config);
    FUNC2(es, "verb", o->verbosity);
    FUNC2(es, "daemon", o->daemon);
    FUNC2(es, "daemon_log_redirect", o->log);
    FUNC3(es, "daemon_start_time", FUNC5(NULL));
    FUNC2(es, "daemon_pid", FUNC0());

    if (o->connection_list)
    {
        int i;
        for (i = 0; i < o->connection_list->len; ++i)
        {
            FUNC1(es, o->connection_list->array[i], i+1);
        }
    }
    else
    {
        FUNC1(es, &o->ce, 1);
    }
}