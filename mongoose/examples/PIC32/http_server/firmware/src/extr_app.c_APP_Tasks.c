
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mg_connection {int dummy; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int tcpip; } ;
struct TYPE_4__ {int member_0; int* v; int Val; } ;
typedef int TCPIP_NET_HANDLE ;
typedef int SYS_STATUS ;
typedef TYPE_1__ IPV4_ADDR ;
 int SYS_CONSOLE_MESSAGE (char*) ;
 int SYS_CONSOLE_PRINT (char*,...) ;
 int SYS_STATUS_READY ;
 int TCPIP_STACK_IndexToNet (int) ;
 int TCPIP_STACK_NetAddress (int ) ;
 char* TCPIP_STACK_NetBIOSName (int ) ;
 char* TCPIP_STACK_NetNameGet (int ) ;
 int TCPIP_STACK_NumberOfNetworksGet () ;
 int TCPIP_STACK_Status (int ) ;
 TYPE_3__ appData ;
 int ev_handler ;
 struct mg_connection* mg_bind (int *,char*,int ) ;
 int mg_mgr_poll (int *,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int mgr ;
 TYPE_2__ sysObj ;

void APP_Tasks ( void )
{
    SYS_STATUS tcpipStat;
    const char *netName, *netBiosName;
    static IPV4_ADDR dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR ipAddr;
    TCPIP_NET_HANDLE netH;
    int i, nNets;


    switch ( appData.state )
    {

        case 129:
        {
            tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
            if(tcpipStat < 0)
            {
                SYS_CONSOLE_MESSAGE(" APP: TCP/IP stack initialization failed!\r\n");
                appData.state = 133;
            }
            else if(tcpipStat == SYS_STATUS_READY)
            {


                nNets = TCPIP_STACK_NumberOfNetworksGet();
                for(i = 0; i < nNets; i++)
                {

                    netH = TCPIP_STACK_IndexToNet(i);
                    netName = TCPIP_STACK_NetNameGet(netH);
                    netBiosName = TCPIP_STACK_NetBIOSName(netH);




                    SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS disabled\r\n", netName, netBiosName);


                }
                appData.state = 128;

            }
            break;
        }
        case 128:



            nNets = TCPIP_STACK_NumberOfNetworksGet();

            for (i = 0; i < nNets; i++)
            {
                netH = TCPIP_STACK_IndexToNet(i);
                ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;

                    SYS_CONSOLE_MESSAGE(TCPIP_STACK_NetNameGet(netH));
                    SYS_CONSOLE_MESSAGE(" IP Address: ");
                    SYS_CONSOLE_PRINT("%d.%d.%d.%d \r\n", ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
                    if (ipAddr.v[0] != 0 && ipAddr.v[0] != 169)
                    {
                        appData.state = 130;
                    }
                }
            }
            break;
        case 130:
        {
            SYS_CONSOLE_PRINT("Starting listening on port 8000\r\n");
            struct mg_connection *nc = mg_bind(&mgr, "8000", ev_handler);
            if (nc == ((void*)0)) {
              SYS_CONSOLE_PRINT("Failed to create listener\n\r");
              appData.state = 133;
              break;
            }
            mg_set_protocol_http_websocket(nc);
            SYS_CONSOLE_PRINT("Listener started\r\n");

            appData.state = 131;
            break;
        }
        case 131:
        {
            mg_mgr_poll(&mgr, 1000);
            break;
        }
        case 133:
        {
            SYS_CONSOLE_PRINT("Server stopped\n\r");
            appData.state = 132;
            break;
        }
        case 132:
        {
            break;
        }

        default:
        {

            break;
        }
    }
}
