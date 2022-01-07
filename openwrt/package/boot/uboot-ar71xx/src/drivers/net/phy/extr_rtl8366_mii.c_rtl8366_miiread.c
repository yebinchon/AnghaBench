
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int uint16_t ;
typedef int uchar ;


 int DBG (char*,char*,int ,int ) ;
 int RTL8366_DEVNAME ;
 int printf (char*) ;
 scalar_t__ rtl8366_getPhyReg (int ,int ,int *) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int rtl8366_miiread(char *devname, uchar phy_adr, uchar reg, ushort *data)
{
    uint16_t regData;

    DBG("rtl8366_miiread: devname=%s, addr=%#02x, reg=%#02x\n",
          devname, phy_adr, reg);

    if (strcmp(devname, RTL8366_DEVNAME) != 0)
        return -1;

    if (rtl8366_getPhyReg(phy_adr, reg, &regData)) {
        printf("rtl8366_miiread: write failed!\n");
        return -1;
    }

    if (data)
        *data = regData;

    return 0;
}
