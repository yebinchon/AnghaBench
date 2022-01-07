
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__ const* next; } ;
typedef TYPE_1__ pcap_if_t ;



__attribute__((used)) static const pcap_if_t *null_PCAP_DEV_NEXT(const pcap_if_t *dev)
{
    return dev->next;
}
