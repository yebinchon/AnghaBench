
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Adapter {int link_type; scalar_t__ ring; } ;



int
rawsock_datalink(struct Adapter *adapter)
{
    if (adapter->ring)
        return 1;
    else {
        return adapter->link_type;
    }
}
