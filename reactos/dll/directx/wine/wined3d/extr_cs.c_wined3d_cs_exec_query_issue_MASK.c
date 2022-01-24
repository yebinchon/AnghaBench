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
struct wined3d_query {int /*<<< orphan*/  counter_retrieved; int /*<<< orphan*/  poll_list_entry; TYPE_1__* query_ops; } ;
struct wined3d_cs_query_issue {int flags; struct wined3d_query* query; } ;
struct wined3d_cs {int /*<<< orphan*/  query_poll_list; int /*<<< orphan*/  thread; } ;
struct TYPE_2__ {scalar_t__ (* query_issue ) (struct wined3d_query*,int) ;} ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int WINED3DISSUE_BEGIN ; 
 int WINED3DISSUE_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct wined3d_query*,int) ; 

__attribute__((used)) static void FUNC6(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_query_issue *op = data;
    struct wined3d_query *query = op->query;
    BOOL poll;

    poll = query->query_ops->query_issue(query, op->flags);

    if (!cs->thread)
        return;

    if (poll && FUNC2(&query->poll_list_entry))
    {
        FUNC1(&cs->query_poll_list, &query->poll_list_entry);
        return;
    }

    /* This can happen if occlusion queries are restarted. This discards the
     * old result, since polling it could result in a GL error. */
    if ((op->flags & WINED3DISSUE_BEGIN) && !poll && !FUNC2(&query->poll_list_entry))
    {
        FUNC4(&query->poll_list_entry);
        FUNC3(&query->poll_list_entry);
        FUNC0(&query->counter_retrieved);
        return;
    }

    /* This can happen when an occlusion query is ended without being started,
     * in which case we don't want to poll, but still have to counter-balance
     * the increment of the main counter.
     *
     * This can also happen if an event query is re-issued before the first
     * fence was reached. In this case the query is already in the list and
     * the poll function will check the new fence. We have to counter-balance
     * the discarded increment. */
    if (op->flags & WINED3DISSUE_END)
        FUNC0(&query->counter_retrieved);
}