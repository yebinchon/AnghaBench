
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8 ;


 void** hextbl ;

__attribute__((used)) static int
print_key(uint8 *keyid, char *dst)
{
 int i;
 unsigned c;

 for (i = 0; i < 8; i++)
 {
  c = keyid[i];
  *dst++ = hextbl[(c >> 4) & 0x0F];
  *dst++ = hextbl[c & 0x0F];
 }
 *dst = 0;
 return 8 * 2;
}
