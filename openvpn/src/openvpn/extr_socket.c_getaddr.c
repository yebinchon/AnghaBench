
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 int AF_INET ;
 int M_WARN ;
 int get_addr_generic (int ,unsigned int,char const*,int *,int *,int,int volatile*,int ) ;

in_addr_t
getaddr(unsigned int flags,
        const char *hostname,
        int resolve_retry_seconds,
        bool *succeeded,
        volatile int *signal_received)
{
    in_addr_t addr;
    int status;

    status = get_addr_generic(AF_INET, flags, hostname, &addr, ((void*)0),
                              resolve_retry_seconds, signal_received,
                              M_WARN);
    if (status==0)
    {
        if (succeeded)
        {
            *succeeded = 1;
        }
        return addr;
    }
    else
    {
        if (succeeded)
        {
            *succeeded = 0;
        }
        return 0;
    }
}
