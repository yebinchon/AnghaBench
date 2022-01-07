
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char uint8_t ;
typedef int ucPower ;
typedef scalar_t__ int8_t ;
typedef unsigned char _u8 ;
typedef void* _u32 ;
struct TYPE_4__ {void* FilterIdMask; } ;
typedef TYPE_1__ _WlanRxFilterOperationCommandBuff_t ;
struct TYPE_6__ {int lease_time; void* ipv4_addr_last; void* ipv4_addr_start; } ;
struct TYPE_5__ {void* ipV4DnsServer; void* ipV4Gateway; void* ipV4Mask; void* ipV4; } ;
typedef TYPE_2__ SlNetCfgIpV4Args_t ;
typedef TYPE_3__ SlNetAppDhcpServerBasicOpt_t ;
typedef int RxFilterIdMask ;


 int ASSERT_ON_ERROR (int ) ;
 int IPCONFIG_MODE_ENABLE_IPV4 ;
 int NETAPP_SET_DHCP_SRV_BASIC_OPT ;
 scalar_t__ ROLE_AP ;
 int SL_CONNECTION_POLICY (int,int,int ,int ,int ) ;
 int SL_IPV4_AP_P2P_GO_STATIC_ENABLE ;
 int SL_IPV4_STA_P2P_CL_DHCP_ENABLE ;
 void* SL_IPV4_VAL (int,int,int,int) ;
 int SL_NET_APP_DHCP_SERVER_ID ;
 int SL_NET_APP_HTTP_SERVER_ID ;
 int SL_NORMAL_POLICY ;
 int SL_POLICY_CONNECTION ;
 int SL_POLICY_PM ;
 int SL_REMOVE_RX_FILTER ;
 int SL_WLAN_CFG_GENERAL_PARAM_ID ;
 int WLAN_GENERAL_PARAM_OPT_AP_TX_POWER ;
 int WLAN_GENERAL_PARAM_OPT_COUNTRY_CODE ;
 int WLAN_GENERAL_PARAM_OPT_STA_TX_POWER ;
 int memset (void*,int,int) ;
 int pyb_rtc_get_seconds () ;
 int sl_NetAppMDNSUnRegisterService (int ,int ) ;
 int sl_NetAppSet (int ,int ,int,unsigned char*) ;
 int sl_NetAppStart (int ) ;
 int sl_NetAppStop (int ) ;
 int sl_NetCfgSet (int ,int,int,unsigned char*) ;
 int sl_WlanPolicySet (int ,int ,int *,int ) ;
 int sl_WlanProfileDel (int) ;
 int sl_WlanRxFilterSet (int ,unsigned char*,int) ;
 int sl_WlanSet (int ,int ,int,unsigned char*) ;
 int wlan_first_start () ;
 int wlan_reenable (scalar_t__) ;
 int wlan_servers_start () ;
 int wlan_servers_stop () ;
 int wlan_set_antenna (unsigned char) ;
 int wlan_set_channel (unsigned char) ;
 int wlan_set_current_time (int ) ;
 int wlan_set_mode (scalar_t__) ;
 int wlan_set_security (unsigned char,char const*,unsigned char) ;
 int wlan_set_ssid (char const*,unsigned char,int) ;
 int wlan_sl_disconnect () ;

void wlan_sl_init (int8_t mode, const char *ssid, uint8_t ssid_len, uint8_t auth, const char *key, uint8_t key_len,
                   uint8_t channel, uint8_t antenna, bool add_mac) {


    wlan_servers_stop();


    wlan_first_start();


    wlan_sl_disconnect();


    ASSERT_ON_ERROR(sl_WlanProfileDel(0xFF));


    uint8_t value = 1;
    ASSERT_ON_ERROR(sl_NetCfgSet(SL_IPV4_STA_P2P_CL_DHCP_ENABLE, 1, 1, &value));


    ASSERT_ON_ERROR(sl_WlanPolicySet(SL_POLICY_PM, SL_NORMAL_POLICY, ((void*)0), 0));


    ASSERT_ON_ERROR(sl_NetAppMDNSUnRegisterService(0, 0));


    sl_NetAppStop(SL_NET_APP_HTTP_SERVER_ID);


    _WlanRxFilterOperationCommandBuff_t RxFilterIdMask;
    memset ((void *)&RxFilterIdMask, 0 ,sizeof(RxFilterIdMask));
    memset(RxFilterIdMask.FilterIdMask, 0xFF, 8);
    ASSERT_ON_ERROR(sl_WlanRxFilterSet(SL_REMOVE_RX_FILTER, (_u8 *)&RxFilterIdMask, sizeof(_WlanRxFilterOperationCommandBuff_t)));







    wlan_set_mode(mode);


    wlan_reenable(mode);



    uint8_t ucPower = 0;
    if (mode == ROLE_AP) {
        ASSERT_ON_ERROR(sl_WlanSet(SL_WLAN_CFG_GENERAL_PARAM_ID, WLAN_GENERAL_PARAM_OPT_AP_TX_POWER, sizeof(ucPower),
                                   (unsigned char *)&ucPower));


        wlan_set_ssid (ssid, ssid_len, add_mac);
        wlan_set_security (auth, key, key_len);
        wlan_set_channel (channel);


        _u8* country = (_u8*)"EU";
        ASSERT_ON_ERROR(sl_WlanSet(SL_WLAN_CFG_GENERAL_PARAM_ID, WLAN_GENERAL_PARAM_OPT_COUNTRY_CODE, 2, country));

        SlNetCfgIpV4Args_t ipV4;
        ipV4.ipV4 = (_u32)SL_IPV4_VAL(192,168,1,1);
        ipV4.ipV4Mask = (_u32)SL_IPV4_VAL(255,255,255,0);
        ipV4.ipV4Gateway = (_u32)SL_IPV4_VAL(192,168,1,1);
        ipV4.ipV4DnsServer = (_u32)SL_IPV4_VAL(192,168,1,1);
        ASSERT_ON_ERROR(sl_NetCfgSet(SL_IPV4_AP_P2P_GO_STATIC_ENABLE, IPCONFIG_MODE_ENABLE_IPV4,
                                     sizeof(SlNetCfgIpV4Args_t), (_u8 *)&ipV4));

        SlNetAppDhcpServerBasicOpt_t dhcpParams;
        dhcpParams.lease_time = 4096;
        dhcpParams.ipv4_addr_start = SL_IPV4_VAL(192,168,1,2);
        dhcpParams.ipv4_addr_last = SL_IPV4_VAL(192,168,1,254);
        ASSERT_ON_ERROR(sl_NetAppStop(SL_NET_APP_DHCP_SERVER_ID));
        ASSERT_ON_ERROR(sl_NetAppSet(SL_NET_APP_DHCP_SERVER_ID, NETAPP_SET_DHCP_SRV_BASIC_OPT,
                                     sizeof(SlNetAppDhcpServerBasicOpt_t), (_u8* )&dhcpParams));
        ASSERT_ON_ERROR(sl_NetAppStart(SL_NET_APP_DHCP_SERVER_ID));


        wlan_reenable(mode);
    } else {
        ASSERT_ON_ERROR(sl_WlanSet(SL_WLAN_CFG_GENERAL_PARAM_ID, WLAN_GENERAL_PARAM_OPT_STA_TX_POWER,
                                   sizeof(ucPower), (unsigned char *)&ucPower));

        ASSERT_ON_ERROR(sl_WlanPolicySet(SL_POLICY_CONNECTION, SL_CONNECTION_POLICY(1, 1, 0, 0, 0), ((void*)0), 0));
    }


    wlan_set_current_time (pyb_rtc_get_seconds());


    wlan_servers_start();
}
