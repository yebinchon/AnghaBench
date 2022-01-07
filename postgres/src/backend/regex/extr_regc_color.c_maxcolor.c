
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colormap {int max; } ;
typedef int color ;


 scalar_t__ CISERR () ;
 int COLORLESS ;

__attribute__((used)) static color
maxcolor(struct colormap *cm)
{
 if (CISERR())
  return COLORLESS;

 return (color) cm->max;
}
