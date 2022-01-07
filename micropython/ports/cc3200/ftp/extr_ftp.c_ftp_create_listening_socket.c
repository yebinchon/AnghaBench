
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sServerAddress ;
typedef int nonBlockingOption ;
typedef int _u8 ;
typedef int _u16 ;
typedef scalar_t__ _i16 ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_7__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct TYPE_6__ {int NonblockingEnabled; } ;
typedef TYPE_2__ SlSockNonblocking_t ;
typedef int SlSockAddr_t ;
typedef TYPE_3__ SlSockAddrIn_t ;


 int ASSERT (int) ;
 int SL_AF_INET ;
 int SL_INADDR_ANY ;
 int SL_IPPROTO_IP ;
 int SL_SOCK_STREAM ;
 scalar_t__ SL_SOC_OK ;
 int SL_SOL_SOCKET ;
 int SL_SO_NONBLOCKING ;
 int modusocket_socket_add (scalar_t__,int) ;
 int servers_close_socket (scalar_t__*) ;
 scalar_t__ sl_Bind (scalar_t__,int const*,int) ;
 int sl_Htons (int ) ;
 scalar_t__ sl_Listen (scalar_t__,int ) ;
 scalar_t__ sl_SetSockOpt (scalar_t__,int ,int ,TYPE_2__*,int) ;
 scalar_t__ sl_Socket (int ,int ,int ) ;

__attribute__((used)) static bool ftp_create_listening_socket (_i16 *sd, _u16 port, _u8 backlog) {
    SlSockNonblocking_t nonBlockingOption;
    SlSockAddrIn_t sServerAddress;
    _i16 _sd;
    _i16 result;


    ASSERT ((*sd = sl_Socket(SL_AF_INET, SL_SOCK_STREAM, SL_IPPROTO_IP)) > 0);
    _sd = *sd;

    if (_sd > 0) {

        modusocket_socket_add(_sd, 0);


        nonBlockingOption.NonblockingEnabled = 1;
        ASSERT ((result = sl_SetSockOpt(_sd, SL_SOL_SOCKET, SL_SO_NONBLOCKING, &nonBlockingOption, sizeof(nonBlockingOption))) == SL_SOC_OK);


        sServerAddress.sin_family = SL_AF_INET;
        sServerAddress.sin_addr.s_addr = SL_INADDR_ANY;
        sServerAddress.sin_port = sl_Htons(port);

        ASSERT ((result |= sl_Bind(_sd, (const SlSockAddr_t *)&sServerAddress, sizeof(sServerAddress))) == SL_SOC_OK);


        ASSERT ((result |= sl_Listen (_sd, backlog)) == SL_SOC_OK);

        if (result == SL_SOC_OK) {
            return 1;
        }
        servers_close_socket(sd);
    }
    return 0;
}
