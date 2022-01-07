
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;



__attribute__((used)) static int8 TIFFClampDoubleToInt8( double val )
{
    if( val > 127 )
        return 127;
    if( val < -128 || val != val )
        return -128;
    return (int8)val;
}
