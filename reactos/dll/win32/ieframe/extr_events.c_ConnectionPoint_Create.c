
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int iid; int * container; scalar_t__ sinks_size; int * sinks; TYPE_1__ IConnectionPoint_iface; } ;
typedef int * REFIID ;
typedef int IConnectionPointContainer ;
typedef TYPE_2__ ConnectionPoint ;


 int ConnectionPointVtbl ;
 TYPE_2__* heap_alloc (int) ;

__attribute__((used)) static void ConnectionPoint_Create(REFIID riid, ConnectionPoint **cp,
                                   IConnectionPointContainer *container)
{
    ConnectionPoint *ret = heap_alloc(sizeof(ConnectionPoint));

    ret->IConnectionPoint_iface.lpVtbl = &ConnectionPointVtbl;

    ret->sinks = ((void*)0);
    ret->sinks_size = 0;
    ret->container = container;

    ret->iid = *riid;

    *cp = ret;
}
