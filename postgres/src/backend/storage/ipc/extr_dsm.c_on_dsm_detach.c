
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int on_dsm_detach_callback ;
struct TYPE_5__ {int node; int arg; int function; } ;
typedef TYPE_1__ dsm_segment_detach_callback ;
struct TYPE_6__ {int on_detach; } ;
typedef TYPE_2__ dsm_segment ;
typedef int Datum ;


 TYPE_1__* MemoryContextAlloc (int ,int) ;
 int TopMemoryContext ;
 int slist_push_head (int *,int *) ;

void
on_dsm_detach(dsm_segment *seg, on_dsm_detach_callback function, Datum arg)
{
 dsm_segment_detach_callback *cb;

 cb = MemoryContextAlloc(TopMemoryContext,
       sizeof(dsm_segment_detach_callback));
 cb->function = function;
 cb->arg = arg;
 slist_push_head(&seg->on_detach, &cb->node);
}
