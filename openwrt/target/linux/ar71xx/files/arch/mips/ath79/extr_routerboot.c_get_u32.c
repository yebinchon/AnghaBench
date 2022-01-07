
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static u32 get_u32(void *buf)
{
 u8 *p = buf;

 return ((u32) p[3] + ((u32) p[2] << 8) + ((u32) p[1] << 16) +
        ((u32) p[0] << 24));
}
