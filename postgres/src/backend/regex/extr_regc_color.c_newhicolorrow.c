
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct colormap {int hiarrayrows; int maxarrayrows; int hiarraycols; size_t* hicolormap; TYPE_1__* cd; } ;
typedef size_t color ;
struct TYPE_2__ {int nuchrs; } ;


 int CERR (int ) ;
 int INT_MAX ;
 scalar_t__ REALLOC (size_t*,int) ;
 int REG_ESPACE ;
 int memcpy (size_t*,size_t*,int) ;

__attribute__((used)) static int
newhicolorrow(struct colormap *cm,
     int oldrow)
{
 int newrow = cm->hiarrayrows;
 color *newrowptr;
 int i;


 if (newrow >= cm->maxarrayrows)
 {
  color *newarray;

  if (cm->maxarrayrows >= INT_MAX / (cm->hiarraycols * 2))
  {
   CERR(REG_ESPACE);
   return 0;
  }
  newarray = (color *) REALLOC(cm->hicolormap,
          cm->maxarrayrows * 2 *
          cm->hiarraycols * sizeof(color));
  if (newarray == ((void*)0))
  {
   CERR(REG_ESPACE);
   return 0;
  }
  cm->hicolormap = newarray;
  cm->maxarrayrows *= 2;
 }
 cm->hiarrayrows++;


 newrowptr = &cm->hicolormap[newrow * cm->hiarraycols];
 memcpy(newrowptr,
     &cm->hicolormap[oldrow * cm->hiarraycols],
     cm->hiarraycols * sizeof(color));


 for (i = 0; i < cm->hiarraycols; i++)
  cm->cd[newrowptr[i]].nuchrs++;

 return newrow;
}
