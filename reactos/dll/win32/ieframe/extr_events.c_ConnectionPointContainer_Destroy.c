
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pns; int wbe; int wbe2; } ;
typedef TYPE_1__ ConnectionPointContainer ;


 int ConnectionPoint_Destroy (int ) ;

void ConnectionPointContainer_Destroy(ConnectionPointContainer *This)
{
    ConnectionPoint_Destroy(This->wbe2);
    ConnectionPoint_Destroy(This->wbe);
    ConnectionPoint_Destroy(This->pns);
}
