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
typedef  unsigned char uint8_t ;
typedef  int /*<<< orphan*/  ucPower ;
typedef  scalar_t__ int8_t ;
typedef  unsigned char _u8 ;
typedef  void* _u32 ;
struct TYPE_4__ {void* FilterIdMask; } ;
typedef  TYPE_1__ _WlanRxFilterOperationCommandBuff_t ;
struct TYPE_6__ {int lease_time; void* ipv4_addr_last; void* ipv4_addr_start; } ;
struct TYPE_5__ {void* ipV4DnsServer; void* ipV4Gateway; void* ipV4Mask; void* ipV4; } ;
typedef  TYPE_2__ SlNetCfgIpV4Args_t ;
typedef  TYPE_3__ SlNetAppDhcpServerBasicOpt_t ;
typedef  int /*<<< orphan*/  RxFilterIdMask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IPCONFIG_MODE_ENABLE_IPV4 ; 
 int /*<<< orphan*/  NETAPP_SET_DHCP_SRV_BASIC_OPT ; 
 scalar_t__ ROLE_AP ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SL_IPV4_AP_P2P_GO_STATIC_ENABLE ; 
 int /*<<< orphan*/  SL_IPV4_STA_P2P_CL_DHCP_ENABLE ; 
 void* FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  SL_NET_APP_DHCP_SERVER_ID ; 
 int /*<<< orphan*/  SL_NET_APP_HTTP_SERVER_ID ; 
 int /*<<< orphan*/  SL_NORMAL_POLICY ; 
 int /*<<< orphan*/  SL_POLICY_CONNECTION ; 
 int /*<<< orphan*/  SL_POLICY_PM ; 
 int /*<<< orphan*/  SL_REMOVE_RX_FILTER ; 
 int /*<<< orphan*/  SL_WLAN_CFG_GENERAL_PARAM_ID ; 
 int /*<<< orphan*/  WLAN_GENERAL_PARAM_OPT_AP_TX_POWER ; 
 int /*<<< orphan*/  WLAN_GENERAL_PARAM_OPT_COUNTRY_CODE ; 
 int /*<<< orphan*/  WLAN_GENERAL_PARAM_OPT_STA_TX_POWER ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (unsigned char) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char,char const*,unsigned char) ; 
 int /*<<< orphan*/  FUNC23 (char const*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC24 () ; 

void FUNC25 (int8_t mode, const char *ssid, uint8_t ssid_len, uint8_t auth, const char *key, uint8_t key_len,
                   uint8_t channel, uint8_t antenna, bool add_mac) {

    // stop the servers
    FUNC17();

    // do a basic start
    FUNC14();

    // close any active connections
    FUNC24();

    // Remove all profiles
    FUNC0(FUNC11(0xFF));

    // Enable the DHCP client
    uint8_t value = 1;
    FUNC0(FUNC9(SL_IPV4_STA_P2P_CL_DHCP_ENABLE, 1, 1, &value));

    // Set PM policy to normal
    FUNC0(FUNC10(SL_POLICY_PM, SL_NORMAL_POLICY, NULL, 0));

    // Unregister mDNS services
    FUNC0(FUNC5(0, 0));

    // Stop the internal HTTP server
    FUNC8(SL_NET_APP_HTTP_SERVER_ID);

    // Remove all 64 filters (8 * 8)
    _WlanRxFilterOperationCommandBuff_t  RxFilterIdMask;
    FUNC3 ((void *)&RxFilterIdMask, 0 ,sizeof(RxFilterIdMask));
    FUNC3(RxFilterIdMask.FilterIdMask, 0xFF, 8);
    FUNC0(FUNC12(SL_REMOVE_RX_FILTER, (_u8 *)&RxFilterIdMask, sizeof(_WlanRxFilterOperationCommandBuff_t)));

#if MICROPY_HW_ANTENNA_DIVERSITY
    // set the antenna type
    wlan_set_antenna (antenna);
#endif

    // switch to the requested mode
    FUNC21(mode);

    // stop and start again (we need to in the propper mode from now on)
    FUNC15(mode);

    // Set Tx power level for station or AP mode
    // Number between 0-15, as dB offset from max power - 0 will set max power
    uint8_t ucPower = 0;
    if (mode == ROLE_AP) {
        FUNC0(FUNC13(SL_WLAN_CFG_GENERAL_PARAM_ID, WLAN_GENERAL_PARAM_OPT_AP_TX_POWER, sizeof(ucPower),
                                   (unsigned char *)&ucPower));

        // configure all parameters
        FUNC23 (ssid, ssid_len, add_mac);
        FUNC22 (auth, key, key_len);
        FUNC19 (channel);

        // set the country
        _u8*  country = (_u8*)"EU";
        FUNC0(FUNC13(SL_WLAN_CFG_GENERAL_PARAM_ID, WLAN_GENERAL_PARAM_OPT_COUNTRY_CODE, 2, country));

        SlNetCfgIpV4Args_t ipV4;
        ipV4.ipV4          = (_u32)FUNC2(192,168,1,1);            // _u32 IP address
        ipV4.ipV4Mask      = (_u32)FUNC2(255,255,255,0);          // _u32 Subnet mask for this AP
        ipV4.ipV4Gateway   = (_u32)FUNC2(192,168,1,1);            // _u32 Default gateway address
        ipV4.ipV4DnsServer = (_u32)FUNC2(192,168,1,1);            // _u32 DNS server address
        FUNC0(FUNC9(SL_IPV4_AP_P2P_GO_STATIC_ENABLE, IPCONFIG_MODE_ENABLE_IPV4,
                                     sizeof(SlNetCfgIpV4Args_t), (_u8 *)&ipV4));

        SlNetAppDhcpServerBasicOpt_t dhcpParams;
        dhcpParams.lease_time      =  4096;                             // lease time (in seconds) of the IP Address
        dhcpParams.ipv4_addr_start =  FUNC2(192,168,1,2);         // first IP Address for allocation.
        dhcpParams.ipv4_addr_last  =  FUNC2(192,168,1,254);       // last IP Address for allocation.
        FUNC0(FUNC8(SL_NET_APP_DHCP_SERVER_ID));      // Stop DHCP server before settings
        FUNC0(FUNC6(SL_NET_APP_DHCP_SERVER_ID, NETAPP_SET_DHCP_SRV_BASIC_OPT,
                                     sizeof(SlNetAppDhcpServerBasicOpt_t), (_u8* )&dhcpParams));  // set parameters
        FUNC0(FUNC7(SL_NET_APP_DHCP_SERVER_ID));     // Start DHCP server with new settings

        // stop and start again
        FUNC15(mode);
    } else { // STA and P2P modes
        FUNC0(FUNC13(SL_WLAN_CFG_GENERAL_PARAM_ID, WLAN_GENERAL_PARAM_OPT_STA_TX_POWER,
                                   sizeof(ucPower), (unsigned char *)&ucPower));
        // set connection policy to Auto + Fast (tries to connect to the last connected AP)
        FUNC0(FUNC10(SL_POLICY_CONNECTION, FUNC1(1, 1, 0, 0, 0), NULL, 0));
    }

    // set current time and date (needed to validate certificates)
    FUNC20 (FUNC4());

    // start the servers before returning
    FUNC16();
}