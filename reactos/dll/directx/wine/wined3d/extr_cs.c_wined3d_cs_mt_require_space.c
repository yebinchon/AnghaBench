
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_cs {scalar_t__ thread_id; int * queue; } ;
typedef enum wined3d_cs_queue_id { ____Placeholder_wined3d_cs_queue_id } wined3d_cs_queue_id ;


 scalar_t__ GetCurrentThreadId () ;
 void* wined3d_cs_queue_require_space (int *,size_t,struct wined3d_cs*) ;
 void* wined3d_cs_st_require_space (struct wined3d_cs*,size_t,int) ;

__attribute__((used)) static void *wined3d_cs_mt_require_space(struct wined3d_cs *cs, size_t size, enum wined3d_cs_queue_id queue_id)
{
    if (cs->thread_id == GetCurrentThreadId())
        return wined3d_cs_st_require_space(cs, size, queue_id);

    return wined3d_cs_queue_require_space(&cs->queue[queue_id], size, cs);
}
