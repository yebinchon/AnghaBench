
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lwIP_netconn ;
struct TYPE_2__ {int * conn; } ;


 int NUM_SOCKETS ;
 int lwIP_ASSERT (int *) ;
 TYPE_1__* sockets ;

__attribute__((used)) static int find_socket(lwIP_netconn *newconn)
{
    int i = 0;
    lwIP_ASSERT(newconn);
    for (i = 0; i < NUM_SOCKETS; ++i)
    {
        if (sockets[i].conn && sockets[i].conn == newconn)
            return i;
    }
    return -1;
}
