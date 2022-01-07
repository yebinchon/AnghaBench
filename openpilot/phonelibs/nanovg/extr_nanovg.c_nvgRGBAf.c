
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float r; float g; float b; float a; } ;
typedef TYPE_1__ NVGcolor ;



NVGcolor nvgRGBAf(float r, float g, float b, float a)
{
 NVGcolor color;

 color.r = r;
 color.g = g;
 color.b = b;
 color.a = a;
 return color;
}
