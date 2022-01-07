
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int interlace; } ;



void gdImageInterlace (gdImagePtr im, int interlaceArg)
{
 im->interlace = interlaceArg;
}
