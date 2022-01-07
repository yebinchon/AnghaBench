
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void be_wr(unsigned char *buf, uint32_t val)
{
 buf[0] = (val >> 24) & 0xFFU;
 buf[1] = (val >> 16) & 0xFFU;
 buf[2] = (val >> 8) & 0xFFU;
 buf[3] = val & 0xFFU;
}
