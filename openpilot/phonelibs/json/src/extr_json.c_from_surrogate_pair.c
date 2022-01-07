
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int uchar_t ;



__attribute__((used)) static bool from_surrogate_pair(uint16_t uc, uint16_t lc, uchar_t *unicode)
{
 if (uc >= 0xD800 && uc <= 0xDBFF && lc >= 0xDC00 && lc <= 0xDFFF) {
  *unicode = 0x10000 + ((((uchar_t)uc & 0x3FF) << 10) | (lc & 0x3FF));
  return 1;
 } else {
  return 0;
 }
}
