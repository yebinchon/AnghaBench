
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC3000_UsynchCallback ;
 int HCI_EVNT_WLAN_ASYNC_PING_REPORT ;
 int HCI_EVNT_WLAN_KEEPALIVE ;
 int HCI_EVNT_WLAN_UNSOL_INIT ;
 int ReadWlanInterruptPin ;
 int SpiPauseSpi ;
 int SpiResumeSpi ;
 int WriteWlanPin ;
 scalar_t__ aucCC3000_prefix ;
 int sendBootLoaderPatch ;
 int sendDriverPatch ;
 int sendWLFWPatch ;
 int systick_sleep (int) ;
 int wlan_init (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int wlan_ioctl_del_profile (int) ;
 int wlan_ioctl_set_connection_policy (int ,int ,int ) ;
 int wlan_set_event_mask (int) ;
 int wlan_smart_config_set_prefix (char*) ;
 int wlan_start (unsigned short) ;

__attribute__((used)) static int initDriver(unsigned short cRequestPatch)
{

    wlan_init(CC3000_UsynchCallback, sendWLFWPatch, sendDriverPatch, sendBootLoaderPatch,
              ReadWlanInterruptPin, SpiResumeSpi, SpiPauseSpi, WriteWlanPin);


    wlan_start(cRequestPatch);
    wlan_smart_config_set_prefix((char*)aucCC3000_prefix);
    wlan_ioctl_set_connection_policy(0, 0, 0);
    wlan_ioctl_del_profile(255);


    wlan_set_event_mask(HCI_EVNT_WLAN_KEEPALIVE|
                        HCI_EVNT_WLAN_UNSOL_INIT|
                        HCI_EVNT_WLAN_ASYNC_PING_REPORT);


    systick_sleep(100);
    return(0);
}
