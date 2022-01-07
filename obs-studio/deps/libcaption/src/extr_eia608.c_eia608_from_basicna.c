
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int eia608_is_basicna (int) ;
 int eia608_parity (int) ;

uint16_t eia608_from_basicna(uint16_t bna1, uint16_t bna2)
{
    if (!eia608_is_basicna(bna1) || !eia608_is_basicna(bna2)) {
        return 0;
    }

    return eia608_parity((0xFF00 & bna1) | ((0xFF00 & bna2) >> 8));
}
