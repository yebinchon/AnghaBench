
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int FILE ;


 int fwrite (int*,int,int,int *) ;

__attribute__((used)) static void fput16le(uint16_t val, FILE *fp)
{
    uint8_t bytes[2] = {val, val >> 8};
    fwrite(bytes, 1, 2, fp);
}
