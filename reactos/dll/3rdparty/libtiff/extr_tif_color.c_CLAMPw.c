
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float CLAMPw(float v, float vmin, float vmax)
{
    if( v < vmin )
    {

        return vmin;
    }
    if( v > vmax )
    {

        return vmax;
    }
    return v;
}
