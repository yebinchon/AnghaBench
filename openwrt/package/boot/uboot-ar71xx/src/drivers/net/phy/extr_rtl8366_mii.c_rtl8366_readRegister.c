
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int DBG (char*,int ) ;
 int printf (char*) ;
 scalar_t__ smi_read (int ,int *) ;

__attribute__((used)) static int rtl8366_readRegister(uint32_t reg, uint16_t *data)
{
    uint32_t regData;

    DBG("rtl8366: read register=%#04x, data=", reg);

    if (smi_read(reg, &regData)) {
        printf("\nrtl8366 smi read failed!\n");
        return -1;
    }

    if (data)
        *data = regData;

    DBG("%#04x\n", regData);

    return 0;
}
