
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_cs {int event; int waiting_for_event; int * queue; } ;


 int FALSE ;
 int INFINITE ;
 scalar_t__ InterlockedCompareExchange (int *,int ,int ) ;
 int InterlockedExchange (int *,int ) ;
 int TRUE ;
 size_t WINED3D_CS_QUEUE_DEFAULT ;
 size_t WINED3D_CS_QUEUE_MAP ;
 int WaitForSingleObject (int ,int ) ;
 scalar_t__ wined3d_cs_queue_is_empty (struct wined3d_cs*,int *) ;

__attribute__((used)) static void wined3d_cs_wait_event(struct wined3d_cs *cs)
{
    InterlockedExchange(&cs->waiting_for_event, TRUE);
    if (!(wined3d_cs_queue_is_empty(cs, &cs->queue[WINED3D_CS_QUEUE_DEFAULT])
            && wined3d_cs_queue_is_empty(cs, &cs->queue[WINED3D_CS_QUEUE_MAP]))
            && InterlockedCompareExchange(&cs->waiting_for_event, FALSE, TRUE))
        return;

    WaitForSingleObject(cs->event, INFINITE);
}
