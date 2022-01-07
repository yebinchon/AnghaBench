
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sServerAddress ;
typedef int nonBlockingOption ;
typedef int _i16 ;
struct TYPE_9__ {scalar_t__ sd; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_8__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct TYPE_7__ {int NonblockingEnabled; } ;
typedef TYPE_2__ SlSockNonblocking_t ;
typedef int SlSockAddr_t ;
typedef TYPE_3__ SlSockAddrIn_t ;


 int ASSERT (int) ;
 int SL_AF_INET ;
 int SL_INADDR_ANY ;
 int SL_IPPROTO_TCP ;
 int SL_SOCK_STREAM ;
 int SL_SOC_OK ;
 int SL_SOL_SOCKET ;
 int SL_SO_NONBLOCKING ;
 int TELNET_MAX_CLIENTS ;
 int TELNET_PORT ;
 int modusocket_socket_add (scalar_t__,int) ;
 int servers_close_socket (scalar_t__*) ;
 int sl_Bind (scalar_t__,int const*,int) ;
 int sl_Htons (int ) ;
 int sl_Listen (scalar_t__,int ) ;
 int sl_SetSockOpt (scalar_t__,int ,int ,TYPE_2__*,int) ;
 scalar_t__ sl_Socket (int ,int ,int ) ;
 TYPE_4__ telnet_data ;

__attribute__((used)) static bool telnet_create_socket (void) {
    SlSockNonblocking_t nonBlockingOption;
    SlSockAddrIn_t sServerAddress;
    _i16 result;


    ASSERT ((telnet_data.sd = sl_Socket(SL_AF_INET, SL_SOCK_STREAM, SL_IPPROTO_TCP)) > 0);
    if (telnet_data.sd > 0) {

        modusocket_socket_add(telnet_data.sd, 0);


        nonBlockingOption.NonblockingEnabled = 1;
        ASSERT ((result = sl_SetSockOpt(telnet_data.sd, SL_SOL_SOCKET, SL_SO_NONBLOCKING, &nonBlockingOption, sizeof(nonBlockingOption))) == SL_SOC_OK);


        sServerAddress.sin_family = SL_AF_INET;
        sServerAddress.sin_addr.s_addr = SL_INADDR_ANY;
        sServerAddress.sin_port = sl_Htons(TELNET_PORT);

        ASSERT ((result |= sl_Bind(telnet_data.sd, (const SlSockAddr_t *)&sServerAddress, sizeof(sServerAddress))) == SL_SOC_OK);


        ASSERT ((result |= sl_Listen (telnet_data.sd, TELNET_MAX_CLIENTS)) == SL_SOC_OK);

        if (result == SL_SOC_OK) {
            return 1;
        }
        servers_close_socket(&telnet_data.sd);
    }

    return 0;
}
