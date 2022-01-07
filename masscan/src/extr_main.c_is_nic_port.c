
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Masscan {unsigned int nic_count; TYPE_1__* nic; } ;
struct TYPE_2__ {int src; } ;


 scalar_t__ is_my_port (int *,unsigned int) ;

__attribute__((used)) static unsigned
is_nic_port(const struct Masscan *masscan, unsigned ip)
{
    unsigned i;
    for (i=0; i<masscan->nic_count; i++)
        if (is_my_port(&masscan->nic[i].src, ip))
            return 1;
    return 0;
}
