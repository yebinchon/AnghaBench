
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;



__attribute__((used)) static int16 TIFFClampDoubleToInt16( double val )
{
    if( val > 32767 )
        return 32767;
    if( val < -32768 || val != val )
        return -32768;
    return (int16)val;
}
