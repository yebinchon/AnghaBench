
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double FLT_MAX ;

__attribute__((used)) static float TIFFClampDoubleToFloat( double val )
{
    if( val > FLT_MAX )
        return FLT_MAX;
    if( val < -FLT_MAX )
        return -FLT_MAX;
    return (float)val;
}
