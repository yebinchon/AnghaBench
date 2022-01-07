
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_cs_queue {scalar_t__ volatile tail; int head; } ;
struct wined3d_cs {int dummy; } ;
typedef scalar_t__ LONG ;
typedef int BOOL ;


 int wined3d_from_cs (struct wined3d_cs const*) ;

__attribute__((used)) static BOOL wined3d_cs_queue_is_empty(const struct wined3d_cs *cs, const struct wined3d_cs_queue *queue)
{
    wined3d_from_cs(cs);
    return *(volatile LONG *)&queue->head == queue->tail;
}
