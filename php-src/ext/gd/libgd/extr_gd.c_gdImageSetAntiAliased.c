
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int AA; int AA_color; int AA_dont_blend; } ;



void gdImageSetAntiAliased (gdImagePtr im, int c)
{
 im->AA = 1;
 im->AA_color = c;
 im->AA_dont_blend = -1;
}
