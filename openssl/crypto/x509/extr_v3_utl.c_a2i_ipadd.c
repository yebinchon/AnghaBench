
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipv4_from_asc (unsigned char*,char const*) ;
 int ipv6_from_asc (unsigned char*,char const*) ;
 scalar_t__ strchr (char const*,char) ;

int a2i_ipadd(unsigned char *ipout, const char *ipasc)
{


    if (strchr(ipasc, ':')) {
        if (!ipv6_from_asc(ipout, ipasc))
            return 0;
        return 16;
    } else {
        if (!ipv4_from_asc(ipout, ipasc))
            return 0;
        return 4;
    }
}
