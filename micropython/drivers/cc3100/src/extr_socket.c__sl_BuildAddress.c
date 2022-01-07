
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_26__ {int _S6_u32; } ;
struct TYPE_27__ {TYPE_7__ _S6_un; } ;
struct TYPE_28__ {TYPE_8__ sin6_addr; } ;
typedef TYPE_9__ sockaddr_in6 ;
struct TYPE_25__ {int address; } ;
struct TYPE_22__ {int address; } ;
struct TYPE_20__ {int FamilyAndFlags; int address; int port; } ;
struct TYPE_16__ {TYPE_6__ IpV6; TYPE_3__ IpV6EUI48; TYPE_1__ IpV4; } ;
typedef TYPE_10__ _SocketAddrCommand_u ;
struct TYPE_23__ {int _S6_u8; } ;
struct TYPE_24__ {TYPE_4__ _S6_un; } ;
struct TYPE_21__ {int s_addr; } ;
struct TYPE_19__ {TYPE_5__ sin6_addr; } ;
struct TYPE_18__ {TYPE_2__ sin_addr; int sin_port; } ;
struct TYPE_17__ {int sa_family; } ;
typedef TYPE_11__ SlSockAddr_t ;
typedef TYPE_12__ SlSockAddrIn_t ;
typedef TYPE_13__ SlSockAddrIn6_t ;


 int SL_AF_INET ;
 int SL_AF_INET6_EUI_48 ;
 int sl_Memcpy (int ,int ,int) ;

void _sl_BuildAddress(const SlSockAddr_t *addr, _SocketAddrCommand_u *pCmd)
{




    pCmd->IpV4.FamilyAndFlags = (addr->sa_family << 4) & 0xF0;
    pCmd->IpV4.port = ((SlSockAddrIn_t *)addr)->sin_port;

    if(SL_AF_INET == addr->sa_family)
    {
        pCmd->IpV4.address = ((SlSockAddrIn_t *)addr)->sin_addr.s_addr;
    }
    else if (SL_AF_INET6_EUI_48 == addr->sa_family )
    {
        sl_Memcpy( pCmd->IpV6EUI48.address,((SlSockAddrIn6_t *)addr)->sin6_addr._S6_un._S6_u8, 6);
    }






}
