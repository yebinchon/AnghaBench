
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float a; } ;
typedef TYPE_1__ NVGcolor ;



NVGcolor nvgTransRGBAf(NVGcolor c, float a)
{
 c.a = a;
 return c;
}
