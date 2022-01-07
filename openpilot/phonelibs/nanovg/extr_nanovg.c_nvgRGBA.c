
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char r; unsigned char g; unsigned char b; unsigned char a; } ;
typedef TYPE_1__ NVGcolor ;



NVGcolor nvgRGBA(unsigned char r, unsigned char g, unsigned char b, unsigned char a)
{
 NVGcolor color;

 color.r = r / 255.0f;
 color.g = g / 255.0f;
 color.b = b / 255.0f;
 color.a = a / 255.0f;
 return color;
}
