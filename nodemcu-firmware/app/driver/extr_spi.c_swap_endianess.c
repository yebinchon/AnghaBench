
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static uint32 swap_endianess(uint32 n)
{
    return ((n & 0xff) << 24) |
            ((n & 0xff00) << 8) |
            ((n & 0xff0000UL) >> 8) |
            ((n & 0xff000000UL) >> 24);
}
