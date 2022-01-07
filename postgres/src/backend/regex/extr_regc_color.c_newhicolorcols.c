
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct colormap {int hiarraycols; int maxarrayrows; size_t* hicolormap; int hiarrayrows; TYPE_1__* cd; } ;
typedef size_t color ;
struct TYPE_2__ {int nuchrs; } ;


 int CERR (int ) ;
 int INT_MAX ;
 scalar_t__ REALLOC (size_t*,int) ;
 int REG_ESPACE ;

__attribute__((used)) static void
newhicolorcols(struct colormap *cm)
{
 color *newarray;
 int r,
    c;

 if (cm->hiarraycols >= INT_MAX / (cm->maxarrayrows * 2))
 {
  CERR(REG_ESPACE);
  return;
 }
 newarray = (color *) REALLOC(cm->hicolormap,
         cm->maxarrayrows *
         cm->hiarraycols * 2 * sizeof(color));
 if (newarray == ((void*)0))
 {
  CERR(REG_ESPACE);
  return;
 }
 cm->hicolormap = newarray;



 for (r = cm->hiarrayrows - 1; r >= 0; r--)
 {
  color *oldrowptr = &newarray[r * cm->hiarraycols];
  color *newrowptr = &newarray[r * cm->hiarraycols * 2];
  color *newrowptr2 = newrowptr + cm->hiarraycols;

  for (c = 0; c < cm->hiarraycols; c++)
  {
   color co = oldrowptr[c];

   newrowptr[c] = newrowptr2[c] = co;
   cm->cd[co].nuchrs++;
  }
 }

 cm->hiarraycols *= 2;
}
