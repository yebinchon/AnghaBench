
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 unsigned int GETADDR_FATAL ;
 unsigned int GETADDR_HOST_ORDER ;
 int M_FATAL ;
 int getaddr (unsigned int,char const*,int ,int*,int *) ;

__attribute__((used)) static in_addr_t
get_ip_addr(const char *ip_string, int msglevel, bool *error)
{
    unsigned int flags = GETADDR_HOST_ORDER;
    bool succeeded = 0;
    in_addr_t ret;

    if (msglevel & M_FATAL)
    {
        flags |= GETADDR_FATAL;
    }

    ret = getaddr(flags, ip_string, 0, &succeeded, ((void*)0));
    if (!succeeded && error)
    {
        *error = 1;
    }
    return ret;
}
