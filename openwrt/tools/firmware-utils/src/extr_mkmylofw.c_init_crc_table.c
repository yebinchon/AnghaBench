
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;
typedef int p ;


 long* crc_32_tab ;

void
init_crc_table(void)
{


 uint32_t c;
 uint32_t e;
 int i;
 int k;


 static const int p[] = {0,1,2,4,5,7,8,10,11,12,16,22,23,26};


 e = 0;
 for (i = 0; i < sizeof(p)/sizeof(int); i++)
  e |= 1L << (31 - p[i]);

 crc_32_tab[0] = 0;

 for (i = 1; i < 256; i++) {
  c = 0;
  for (k = i | 256; k != 1; k >>= 1) {
   c = c & 1 ? (c >> 1) ^ e : c >> 1;
   if (k & 1)
    c ^= e;
  }
  crc_32_tab[i] = c;
 }
}
