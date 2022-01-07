
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static uint32 TIFFClampDoubleToUInt32( double val )
{
    if( val < 0 )
        return 0;
    if( val > 0xFFFFFFFFU || val != val )
        return 0xFFFFFFFFU;
    return (uint32)val;
}
