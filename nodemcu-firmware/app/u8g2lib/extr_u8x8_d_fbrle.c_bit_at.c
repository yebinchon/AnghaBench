
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int bit_at( uint8_t *buf, int line, int x )
{
  return buf[x] & (1 << line) ? 1 : 0;
}
