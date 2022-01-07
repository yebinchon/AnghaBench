
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bd_t ;


 int RTL8366_DEVNAME ;
 int miiphy_register (int ,int ,int ) ;
 int rtl8366_miiread ;
 int rtl8366_miiwrite ;
 int strdup (int ) ;

int rtl8366_mii_register(bd_t *bis)
{
    miiphy_register(strdup(RTL8366_DEVNAME), rtl8366_miiread,
   rtl8366_miiwrite);

    return 0;
}
