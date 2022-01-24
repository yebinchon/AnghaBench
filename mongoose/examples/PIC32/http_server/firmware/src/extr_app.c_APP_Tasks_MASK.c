#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mg_connection {int dummy; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int /*<<< orphan*/  tcpip; } ;
struct TYPE_4__ {int member_0; int* v; int /*<<< orphan*/  Val; } ;
typedef  int /*<<< orphan*/  TCPIP_NET_HANDLE ;
typedef  int /*<<< orphan*/  SYS_STATUS ;
typedef  TYPE_1__ IPV4_ADDR ;

/* Variables and functions */
#define  APP_DONE 133 
#define  APP_EMPTY 132 
#define  APP_POLL 131 
#define  APP_START_LISTENING 130 
#define  APP_STATE_INIT 129 
#define  APP_TCPIP_WAIT_FOR_IP 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  SYS_STATUS_READY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__ appData ; 
 int /*<<< orphan*/  ev_handler ; 
 struct mg_connection* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mg_connection*) ; 
 int /*<<< orphan*/  mgr ; 
 TYPE_2__ sysObj ; 

void FUNC11 ( void )
{
    SYS_STATUS          tcpipStat;
    const char          *netName, *netBiosName;
    static IPV4_ADDR    dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR           ipAddr;
    TCPIP_NET_HANDLE    netH;
    int                 i, nNets;

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            tcpipStat = FUNC7(sysObj.tcpip);
            if(tcpipStat < 0)
            {   // some error occurred
                FUNC0(" APP: TCP/IP stack initialization failed!\r\n");
                appData.state = APP_DONE;
            }
            else if(tcpipStat == SYS_STATUS_READY)
            {
                // now that the stack is ready we can check the
                // available interfaces
                nNets = FUNC6();
                for(i = 0; i < nNets; i++)
                {

                    netH = FUNC2(i);
                    netName = FUNC5(netH);
                    netBiosName = FUNC4(netH);

#if defined(TCPIP_STACK_USE_NBNS)
                    SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS enabled\r\n", netName, netBiosName);
#else
                    FUNC1("    Interface %s on host %s - NBNS disabled\r\n", netName, netBiosName);
#endif  // defined(TCPIP_STACK_USE_NBNS)

                }
                appData.state = APP_TCPIP_WAIT_FOR_IP;

            }
            break;
        }
        case APP_TCPIP_WAIT_FOR_IP:

            // if the IP address of an interface has changed
            // display the new value on the system console
            nNets = FUNC6();

            for (i = 0; i < nNets; i++)
            {
                netH = FUNC2(i);
                ipAddr.Val = FUNC3(netH);
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;

                    FUNC0(FUNC5(netH));
                    FUNC0(" IP Address: ");
                    FUNC1("%d.%d.%d.%d \r\n", ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
                    if (ipAddr.v[0] != 0 && ipAddr.v[0] != 169) // Wait for a Valid IP
                    {
                        appData.state = APP_START_LISTENING;
                    }
                }
            }
            break;
        case APP_START_LISTENING:
        {
            FUNC1("Starting listening on port 8000\r\n");
            struct mg_connection *nc = FUNC8(&mgr, "8000", ev_handler);  // Create listening connection and add it to the event manager
            if (nc == NULL) {
              FUNC1("Failed to create listener\n\r");
              appData.state = APP_DONE;
              break;
            }
            FUNC10(nc);
            FUNC1("Listener started\r\n");

            appData.state = APP_POLL;
            break;
        }
        case APP_POLL:
        {
            FUNC9(&mgr, 1000);
            break;
        }
        case APP_DONE:
        {
            FUNC1("Server stopped\n\r");
            appData.state = APP_EMPTY;
            break;
        }
        case APP_EMPTY:
        {
            break;
        }
        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}