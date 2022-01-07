
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int eia608_control_t ;



eia608_control_t eia608_parse_control(uint16_t cc_data, int* cc)
{
    if (0x0200 & cc_data) {
        (*cc) = (cc_data & 0x0800 ? 0x01 : 0x00);
        return (eia608_control_t)(0x177F & cc_data);
    } else {
        (*cc) = (cc_data & 0x0800 ? 0x01 : 0x00) | (cc_data & 0x0100 ? 0x02 : 0x00);
        return (eia608_control_t)(0x167F & cc_data);
    }
}
