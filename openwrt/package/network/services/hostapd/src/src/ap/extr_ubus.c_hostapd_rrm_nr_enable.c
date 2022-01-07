
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int BSS_MGMT_EN_NEIGHBOR ;
 int __hostapd_bss_mgmt_enable (struct hostapd_data*,int) ;

__attribute__((used)) static void
hostapd_rrm_nr_enable(struct hostapd_data *hapd)
{
 __hostapd_bss_mgmt_enable(hapd, 1 << BSS_MGMT_EN_NEIGHBOR);
}
