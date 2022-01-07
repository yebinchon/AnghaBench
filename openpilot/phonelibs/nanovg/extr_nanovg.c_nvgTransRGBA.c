
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char a; } ;
typedef TYPE_1__ NVGcolor ;



NVGcolor nvgTransRGBA(NVGcolor c, unsigned char a)
{
 c.a = a / 255.0f;
 return c;
}
