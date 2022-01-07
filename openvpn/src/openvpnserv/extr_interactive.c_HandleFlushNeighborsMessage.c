
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; } ;
struct TYPE_5__ {scalar_t__ family; TYPE_1__ iface; } ;
typedef TYPE_2__ flush_neighbors_message_t ;
typedef int DWORD ;


 scalar_t__ AF_INET ;
 int FlushIpNetTable (int ) ;
 int FlushIpNetTable2 (scalar_t__,int ) ;

__attribute__((used)) static DWORD
HandleFlushNeighborsMessage(flush_neighbors_message_t *msg)
{
    if (msg->family == AF_INET)
    {
        return FlushIpNetTable(msg->iface.index);
    }

    return FlushIpNetTable2(msg->family, msg->iface.index);
}
