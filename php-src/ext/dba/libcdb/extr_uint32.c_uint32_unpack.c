
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



void uint32_unpack(const char *in, uint32 *out)
{
 *out = (((uint32)(unsigned char)in[3])<<24) |
        (((uint32)(unsigned char)in[2])<<16) |
        (((uint32)(unsigned char)in[1])<<8) |
        (((uint32)(unsigned char)in[0]));
}
