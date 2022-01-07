
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 size_t N_ELEMENTS (int *) ;
 scalar_t__ net_contains_ip (int *,int ) ;
 int * reserved_ips ;

__attribute__((used)) static bool is_reserved_ip(in_addr_t ip)
{
    size_t i;
    for (i = 0; i < N_ELEMENTS(reserved_ips); i++) {
        if (net_contains_ip(&reserved_ips[i], ip))
            return 1;
    }
    return 0;
}
