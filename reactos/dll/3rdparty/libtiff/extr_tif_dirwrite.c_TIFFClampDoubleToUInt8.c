
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static uint8 TIFFClampDoubleToUInt8( double val )
{
    if( val < 0 )
        return 0;
    if( val > 255 || val != val )
        return 255;
    return (uint8)val;
}
