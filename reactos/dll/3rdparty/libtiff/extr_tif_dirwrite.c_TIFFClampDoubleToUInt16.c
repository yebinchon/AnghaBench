
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;



__attribute__((used)) static uint16 TIFFClampDoubleToUInt16( double val )
{
    if( val < 0 )
        return 0;
    if( val > 65535 || val != val )
        return 65535;
    return (uint16)val;
}
