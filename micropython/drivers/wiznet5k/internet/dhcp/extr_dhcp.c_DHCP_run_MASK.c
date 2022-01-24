#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/ * yiaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP_ACK ; 
 int /*<<< orphan*/  DHCP_CLIENT_PORT ; 
 int /*<<< orphan*/  DHCP_IP_CHANGED ; 
 int /*<<< orphan*/  DHCP_IP_LEASED ; 
 int /*<<< orphan*/  DHCP_NAK ; 
 int /*<<< orphan*/  DHCP_OFFER ; 
 int /*<<< orphan*/  DHCP_RUNNING ; 
 int /*<<< orphan*/  DHCP_SOCKET ; 
 int /*<<< orphan*/  DHCP_STOPPED ; 
 int /*<<< orphan*/  DHCP_XID ; 
 int /*<<< orphan*/ * DHCP_allocated_ip ; 
 int INFINITE_LEASETIME ; 
 int /*<<< orphan*/ * OLD_allocated_ip ; 
 scalar_t__ SOCK_UDP ; 
#define  STATE_DHCP_DISCOVER 132 
#define  STATE_DHCP_INIT 131 
#define  STATE_DHCP_LEASED 130 
#define  STATE_DHCP_REQUEST 129 
#define  STATE_DHCP_REREQUEST 128 
 int STATE_DHCP_STOP ; 
 int /*<<< orphan*/  Sn_MR_UDP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int dhcp_lease_time ; 
 int /*<<< orphan*/  dhcp_retry_count ; 
 int dhcp_state ; 
 int dhcp_tick_1s ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pDHCPMSG ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

uint8_t FUNC12(void)
{
	uint8_t  type;
	uint8_t  ret;

	if(dhcp_state == STATE_DHCP_STOP) return DHCP_STOPPED;

	if(FUNC5(DHCP_SOCKET) != SOCK_UDP)
	   FUNC11(DHCP_SOCKET, Sn_MR_UDP, DHCP_CLIENT_PORT, 0x00);

	ret = DHCP_RUNNING;
	type = FUNC6();

	switch ( dhcp_state ) {
	   case STATE_DHCP_INIT     :
         DHCP_allocated_ip[0] = 0;
         DHCP_allocated_ip[1] = 0;
         DHCP_allocated_ip[2] = 0;
         DHCP_allocated_ip[3] = 0;
   		FUNC9();
   		dhcp_state = STATE_DHCP_DISCOVER;
   		break;
		case STATE_DHCP_DISCOVER :
			if (type == DHCP_OFFER){
#ifdef _DHCP_DEBUG_
				printf("> Receive DHCP_OFFER\r\n");
#endif
            DHCP_allocated_ip[0] = pDHCPMSG->yiaddr[0];
            DHCP_allocated_ip[1] = pDHCPMSG->yiaddr[1];
            DHCP_allocated_ip[2] = pDHCPMSG->yiaddr[2];
            DHCP_allocated_ip[3] = pDHCPMSG->yiaddr[3];

				FUNC10();
				dhcp_state = STATE_DHCP_REQUEST;
			} else ret = FUNC1();
         break;

		case STATE_DHCP_REQUEST :
			if (type == DHCP_ACK) {

#ifdef _DHCP_DEBUG_
				printf("> Receive DHCP_ACK\r\n");
#endif
				if (FUNC0()) {
					// Network info assignment from DHCP
					FUNC2();
					FUNC8();

					dhcp_state = STATE_DHCP_LEASED;
				} else {
					// IP address conflict occurred
					FUNC8();
					FUNC3();
				    dhcp_state = STATE_DHCP_INIT;
				}
			} else if (type == DHCP_NAK) {

#ifdef _DHCP_DEBUG_
				printf("> Receive DHCP_NACK\r\n");
#endif

				FUNC8();

				dhcp_state = STATE_DHCP_DISCOVER;
			} else ret = FUNC1();
		break;

		case STATE_DHCP_LEASED :
		   ret = DHCP_IP_LEASED;
			if ((dhcp_lease_time != INFINITE_LEASETIME) && ((dhcp_lease_time/2) < dhcp_tick_1s)) {
				
#ifdef _DHCP_DEBUG_
 				printf("> Maintains the IP address \r\n");
#endif

				type = 0;
				OLD_allocated_ip[0] = DHCP_allocated_ip[0];
				OLD_allocated_ip[1] = DHCP_allocated_ip[1];
				OLD_allocated_ip[2] = DHCP_allocated_ip[2];
				OLD_allocated_ip[3] = DHCP_allocated_ip[3];
				
				DHCP_XID++;

				FUNC10();

				FUNC8();

				dhcp_state = STATE_DHCP_REREQUEST;
			}
		break;

		case STATE_DHCP_REREQUEST :
		   ret = DHCP_IP_LEASED;
			if (type == DHCP_ACK) {
				dhcp_retry_count = 0;
				if (OLD_allocated_ip[0] != DHCP_allocated_ip[0] || 
				    OLD_allocated_ip[1] != DHCP_allocated_ip[1] ||
				    OLD_allocated_ip[2] != DHCP_allocated_ip[2] ||
				    OLD_allocated_ip[3] != DHCP_allocated_ip[3]) 
				{
					ret = DHCP_IP_CHANGED;
					FUNC4();
               #ifdef _DHCP_DEBUG_
                  printf(">IP changed.\r\n");
               #endif
					
				}
         #ifdef _DHCP_DEBUG_
            else printf(">IP is continued.\r\n");
         #endif            				
				FUNC8();
				dhcp_state = STATE_DHCP_LEASED;
			} else if (type == DHCP_NAK) {

#ifdef _DHCP_DEBUG_
				printf("> Receive DHCP_NACK, Failed to maintain ip\r\n");
#endif

				FUNC8();

				dhcp_state = STATE_DHCP_DISCOVER;
			} else ret = FUNC1();
	   	break;
		default :
   		break;
	}

	return ret;
}