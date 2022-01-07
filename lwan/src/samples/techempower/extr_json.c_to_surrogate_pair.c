
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int uchar_t ;


 int assert (int) ;

__attribute__((used)) static void to_surrogate_pair(uchar_t unicode, uint16_t *uc, uint16_t *lc)
{
 uchar_t n;

 assert(unicode >= 0x10000 && unicode <= 0x10FFFF);

 n = unicode - 0x10000;
 *uc = (uint16_t)(((n >> 10) & 0x3FF) | 0xD800);
 *lc = (uint16_t)((n & 0x3FF) | 0xDC00);
}
