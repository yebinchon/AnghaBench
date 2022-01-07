
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* description; } ;
typedef TYPE_1__ pcap_if_t ;



__attribute__((used)) static const char *null_PCAP_DEV_DESCRIPTION(const pcap_if_t *dev)
{
    return dev->description;
}
