
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct colormap {int numcmranges; int hiarraycols; int * hicolormap; TYPE_1__* cmranges; } ;
struct TYPE_2__ {scalar_t__ cmin; scalar_t__ cmax; int rownum; } ;
typedef TYPE_1__ colormaprange ;
typedef int color ;
typedef scalar_t__ chr ;


 scalar_t__ MAX_SIMPLE_CHR ;
 int assert (int) ;
 int cclass_column_index (struct colormap*,scalar_t__) ;

color
pg_reg_getcolor(struct colormap *cm, chr c)
{
 int rownum,
    colnum,
    low,
    high;


 assert(c > MAX_SIMPLE_CHR);





 rownum = 0;
 low = 0;
 high = cm->numcmranges;
 while (low < high)
 {
  int middle = low + (high - low) / 2;
  const colormaprange *cmr = &cm->cmranges[middle];

  if (c < cmr->cmin)
   high = middle;
  else if (c > cmr->cmax)
   low = middle + 1;
  else
  {
   rownum = cmr->rownum;
   break;
  }
 }




 if (cm->hiarraycols > 1)
 {
  colnum = cclass_column_index(cm, c);
  return cm->hicolormap[rownum * cm->hiarraycols + colnum];
 }
 else
 {

  return cm->hicolormap[rownum];
 }
}
