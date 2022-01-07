
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sub; int plus; int seed; scalar_t__ num_colors; } ;
typedef TYPE_1__ gdScatter ;
typedef int gdImagePtr ;


 int GD_SCATTER_SEED () ;
 int gdImageScatterEx (int ,TYPE_1__*) ;

int gdImageScatter(gdImagePtr im, int sub, int plus)
{
 gdScatter s;

 s.sub = sub;
 s.plus = plus;
 s.num_colors = 0;
 s.seed = GD_SCATTER_SEED();
 return gdImageScatterEx(im, &s);
}
