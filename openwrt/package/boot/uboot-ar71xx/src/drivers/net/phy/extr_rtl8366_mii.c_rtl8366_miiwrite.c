
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int uchar ;


 int DBG (char*,char*,int ,int ,int ) ;
 int RTL8366_DEVNAME ;
 int printf (char*) ;
 scalar_t__ rtl8366_setPhyReg (int ,int ,int ) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int rtl8366_miiwrite(char *devname, uchar phy_adr, uchar reg, ushort data)
{
    DBG("rtl8366_miiwrite: devname=%s, addr=%#02x, reg=%#02x, data=%#04x\n",
          devname, phy_adr, reg, data);

    if (strcmp(devname, RTL8366_DEVNAME) != 0)
        return -1;

    if (rtl8366_setPhyReg(phy_adr, reg, data)) {
        printf("rtl8366_miiwrite: write failed!\n");
        return -1;
    }

    return 0;
}
