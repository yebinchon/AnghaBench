
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DER_BAD ;

__attribute__((used)) static uint32_t
gettag(const uint8_t *c, size_t *p, size_t l)
{
 uint32_t tag;

 if (*p >= l)
  return DER_BAD;

 tag = c[(*p)++] & 0x1f;

 if (tag != 0x1f)
  return tag;

 if (*p >= l)
  return DER_BAD;

 while (c[*p] >= 0x80) {
  tag = tag * 128 + c[(*p)++] - 0x80;
  if (*p >= l)
   return DER_BAD;
 }
 return tag;
}
