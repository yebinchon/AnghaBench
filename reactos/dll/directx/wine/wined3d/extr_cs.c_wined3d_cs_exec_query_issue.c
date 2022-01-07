
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_query {int counter_retrieved; int poll_list_entry; TYPE_1__* query_ops; } ;
struct wined3d_cs_query_issue {int flags; struct wined3d_query* query; } ;
struct wined3d_cs {int query_poll_list; int thread; } ;
struct TYPE_2__ {scalar_t__ (* query_issue ) (struct wined3d_query*,int) ;} ;
typedef scalar_t__ BOOL ;


 int InterlockedIncrement (int *) ;
 int WINED3DISSUE_BEGIN ;
 int WINED3DISSUE_END ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int list_init (int *) ;
 int list_remove (int *) ;
 scalar_t__ stub1 (struct wined3d_query*,int) ;

__attribute__((used)) static void wined3d_cs_exec_query_issue(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_query_issue *op = data;
    struct wined3d_query *query = op->query;
    BOOL poll;

    poll = query->query_ops->query_issue(query, op->flags);

    if (!cs->thread)
        return;

    if (poll && list_empty(&query->poll_list_entry))
    {
        list_add_tail(&cs->query_poll_list, &query->poll_list_entry);
        return;
    }



    if ((op->flags & WINED3DISSUE_BEGIN) && !poll && !list_empty(&query->poll_list_entry))
    {
        list_remove(&query->poll_list_entry);
        list_init(&query->poll_list_entry);
        InterlockedIncrement(&query->counter_retrieved);
        return;
    }
    if (op->flags & WINED3DISSUE_END)
        InterlockedIncrement(&query->counter_retrieved);
}
