
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sub; int plus; int* colors; unsigned int num_colors; int seed; } ;
typedef TYPE_1__ gdScatter ;
typedef int gdImagePtr ;


 int GD_SCATTER_SEED () ;
 int gdImageScatterEx (int ,TYPE_1__*) ;

int gdImageScatterColor(gdImagePtr im, int sub, int plus, int colors[], unsigned int num_colors)
{
 gdScatter s;

 s.sub = sub;
 s.plus = plus;
 s.colors = colors;
 s.num_colors = num_colors;
 s.seed = GD_SCATTER_SEED();
 return gdImageScatterEx(im, &s);
}
