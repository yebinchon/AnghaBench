
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 float const INFINITY ;
 float NAN ;
 float const powf (int,float) ;

__attribute__((used)) static inline float float_24_to_32(DWORD in)
{
    const float sgn = in & 0x800000u ? -1.0f : 1.0f;
    const unsigned short e = (in & 0x780000u) >> 19;
    const unsigned int m = in & 0x7ffffu;

    if (e == 0)
    {
        if (m == 0) return sgn * 0.0f;
        else return sgn * powf(2, -6.0f) * ((float)m / 524288.0f);
    }
    else if (e < 15)
    {
        return sgn * powf(2, (float)e - 7.0f) * (1.0f + ((float)m / 524288.0f));
    }
    else
    {
        if (m == 0) return sgn * INFINITY;
        else return NAN;
    }
}
