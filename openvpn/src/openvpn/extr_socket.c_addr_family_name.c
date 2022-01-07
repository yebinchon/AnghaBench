
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
addr_family_name(int af)
{
    switch (af)
    {
        case 129: return "AF_INET";

        case 128: return "AF_INET6";
    }
    return "AF_UNSPEC";
}
