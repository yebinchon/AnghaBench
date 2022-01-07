
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;
struct colormap {int maxarrayrows; int hiarrayrows; int hiarraycols; int * hicolormap; int * cmranges; scalar_t__ numcmranges; int * classbits; int * locolormap; struct colordesc* cd; scalar_t__ free; scalar_t__ max; struct colordesc* cdspace; int ncds; struct vars* v; int magic; } ;
struct colordesc {int nschrs; int nuchrs; int firstchr; scalar_t__ flags; int * arcs; int sub; } ;
typedef int color ;


 int CERR (int ) ;
 int CHR_MIN ;
 int CMMAGIC ;
 scalar_t__ MALLOC (int) ;
 int MAX_SIMPLE_CHR ;
 int NINLINECDS ;
 int NOSUB ;
 int REG_ESPACE ;
 int WHITE ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
initcm(struct vars *v,
    struct colormap *cm)
{
 struct colordesc *cd;

 cm->magic = CMMAGIC;
 cm->v = v;

 cm->ncds = NINLINECDS;
 cm->cd = cm->cdspace;
 cm->max = 0;
 cm->free = 0;

 cd = cm->cd;
 cd->nschrs = MAX_SIMPLE_CHR - CHR_MIN + 1;
 cd->nuchrs = 1;
 cd->sub = NOSUB;
 cd->arcs = ((void*)0);
 cd->firstchr = CHR_MIN;
 cd->flags = 0;

 cm->locolormap = (color *)
  MALLOC((MAX_SIMPLE_CHR - CHR_MIN + 1) * sizeof(color));
 if (cm->locolormap == ((void*)0))
 {
  CERR(REG_ESPACE);
  cm->cmranges = ((void*)0);
  cm->hicolormap = ((void*)0);
  return;
 }

 memset(cm->locolormap, WHITE,
     (MAX_SIMPLE_CHR - CHR_MIN + 1) * sizeof(color));

 memset(cm->classbits, 0, sizeof(cm->classbits));
 cm->numcmranges = 0;
 cm->cmranges = ((void*)0);
 cm->maxarrayrows = 4;
 cm->hiarrayrows = 1;
 cm->hiarraycols = 1;
 cm->hicolormap = (color *) MALLOC(cm->maxarrayrows * sizeof(color));
 if (cm->hicolormap == ((void*)0))
 {
  CERR(REG_ESPACE);
  return;
 }

 cm->hicolormap[0] = WHITE;
}
