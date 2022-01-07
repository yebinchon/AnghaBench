
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static void
sec_make_40bit(uint8 * key)
{
 key[0] = 0xd1;
 key[1] = 0x26;
 key[2] = 0x9e;
}
