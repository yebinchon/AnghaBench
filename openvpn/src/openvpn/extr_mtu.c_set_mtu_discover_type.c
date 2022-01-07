
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_family_t ;
typedef int mtu_type ;




 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_MTU_DISCOVER ;
 int IP_MTU_DISCOVER ;
 int MTUDISC_NOT_SUPPORTED_MSG ;
 int M_ERR ;
 int M_FATAL ;
 int msg (int ,char*,...) ;
 int setsockopt (int,int ,int ,int*,int) ;

void
set_mtu_discover_type(int sd, int mtu_type, sa_family_t proto_af)
{
    if (mtu_type >= 0)
    {
        switch (proto_af)
        {
            default:
                msg(M_FATAL, MTUDISC_NOT_SUPPORTED_MSG);
                break;
        }
    }
}
