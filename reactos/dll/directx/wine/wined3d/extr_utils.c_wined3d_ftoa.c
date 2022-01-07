
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float copysignf (float,float) ;
 scalar_t__ isfinite (float) ;
 int sprintf (char*,char*,float) ;

void wined3d_ftoa(float value, char *s)
{
    int idx = 1;

    if (copysignf(1.0f, value) < 0.0f)
        ++idx;




    sprintf(s, "%.8e", value);
    if (isfinite(value))
        s[idx] = '.';
}
