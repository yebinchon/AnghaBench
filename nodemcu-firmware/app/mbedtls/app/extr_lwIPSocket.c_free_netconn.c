
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ readbuf; } ;
typedef TYPE_1__ lwIP_netconn ;


 int lwIP_ASSERT (TYPE_1__*) ;
 int os_free (TYPE_1__*) ;
 int ringbuf_free (scalar_t__*) ;

__attribute__((used)) static void free_netconn(lwIP_netconn *netconn)
{
    lwIP_ASSERT(netconn);
    if (netconn->readbuf)
    {
        ringbuf_free(&netconn->readbuf);
    }

    os_free(netconn);
    netconn = ((void*)0);
}
