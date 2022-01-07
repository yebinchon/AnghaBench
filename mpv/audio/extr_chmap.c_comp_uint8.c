
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int comp_uint8(const void *a, const void *b)
{
    return *(const uint8_t *)a - *(const uint8_t *)b;
}
