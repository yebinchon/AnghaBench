
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int av_bswap16 (int ) ;

__attribute__((used)) static void swap_16(uint16_t *ptr, size_t size)
{
    for (size_t n = 0; n < size; n++)
        ptr[n] = av_bswap16(ptr[n]);
}
