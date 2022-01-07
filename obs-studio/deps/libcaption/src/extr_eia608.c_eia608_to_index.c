
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ eia608_is_basicna (int) ;
 scalar_t__ eia608_is_specialna (int) ;

__attribute__((used)) static int eia608_to_index(uint16_t cc_data, int* chan, int* c1, int* c2)
{
    (*c1) = (*c2) = -1;
    (*chan) = 0;
    cc_data &= 0x7F7F;


    if (eia608_is_basicna(cc_data)) {

        (*c1) = (cc_data >> 8) - 0x20;
        cc_data &= 0x00FF;

        if (0x0020 <= cc_data && 0x0080 > cc_data) {
            (*c2) = cc_data - 0x20;
            return 2;
        }

        return 1;
    }


    (*chan) = cc_data & 0x0800;
    cc_data = cc_data & 0xF7FF;

    if (eia608_is_specialna(cc_data)) {

        (*c1) = cc_data - 0x1130 + 0x60;
        return 1;
    }

    if (0x1220 <= cc_data && 0x1240 > cc_data) {

        (*c1) = cc_data - 0x1220 + 0x70;
        return 1;
    }

    if (0x1320 <= cc_data && 0x1340 > cc_data) {

        (*c1) = cc_data - 0x1320 + 0x90;
        return 1;
    }

    return 0;
}
