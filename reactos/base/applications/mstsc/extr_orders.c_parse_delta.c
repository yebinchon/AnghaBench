
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static int
parse_delta(uint8 * buffer, int *offset)
{
 int value = buffer[(*offset)++];
 int two_byte = value & 0x80;

 if (value & 0x40)
  value |= ~0x3f;
 else
  value &= 0x3f;

 if (two_byte)
  value = (value << 8) | buffer[(*offset)++];

 return value;
}
