
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* nand_ecc_precalc_table ;

int nand_calculate_ecc(const uint8_t *dat,
         uint8_t *ecc_code)
{
 uint8_t idx, reg1, reg2, reg3, tmp1, tmp2;
 int i;


 reg1 = reg2 = reg3 = 0;


 for(i = 0; i < 256; i++) {

  idx = nand_ecc_precalc_table[*dat++];
  reg1 ^= (idx & 0x3f);


  if (idx & 0x40) {
   reg3 ^= (uint8_t) i;
   reg2 ^= ~((uint8_t) i);
  }
 }


 tmp1 = (reg3 & 0x80) >> 0;
 tmp1 |= (reg2 & 0x80) >> 1;
 tmp1 |= (reg3 & 0x40) >> 1;
 tmp1 |= (reg2 & 0x40) >> 2;
 tmp1 |= (reg3 & 0x20) >> 2;
 tmp1 |= (reg2 & 0x20) >> 3;
 tmp1 |= (reg3 & 0x10) >> 3;
 tmp1 |= (reg2 & 0x10) >> 4;

 tmp2 = (reg3 & 0x08) << 4;
 tmp2 |= (reg2 & 0x08) << 3;
 tmp2 |= (reg3 & 0x04) << 3;
 tmp2 |= (reg2 & 0x04) << 2;
 tmp2 |= (reg3 & 0x02) << 2;
 tmp2 |= (reg2 & 0x02) << 1;
 tmp2 |= (reg3 & 0x01) << 1;
 tmp2 |= (reg2 & 0x01) << 0;






 ecc_code[0] = ~tmp1;
 ecc_code[1] = ~tmp2;

 ecc_code[2] = ((~reg1) << 2) | 0x03;

 return 0;
}
