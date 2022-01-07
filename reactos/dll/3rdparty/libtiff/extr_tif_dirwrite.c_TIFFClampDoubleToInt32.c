
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;



__attribute__((used)) static int32 TIFFClampDoubleToInt32( double val )
{
    if( val > 0x7FFFFFFF )
        return 0x7FFFFFFF;
    if( val < -0x7FFFFFFF-1 || val != val )
        return -0x7FFFFFFF-1;
    return (int32)val;
}
