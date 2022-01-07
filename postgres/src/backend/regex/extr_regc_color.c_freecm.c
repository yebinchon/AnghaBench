
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colormap {scalar_t__ cd; scalar_t__ cdspace; scalar_t__ locolormap; scalar_t__ cmranges; scalar_t__ hicolormap; scalar_t__ magic; } ;


 int FREE (scalar_t__) ;

__attribute__((used)) static void
freecm(struct colormap *cm)
{
 cm->magic = 0;
 if (cm->cd != cm->cdspace)
  FREE(cm->cd);
 if (cm->locolormap != ((void*)0))
  FREE(cm->locolormap);
 if (cm->cmranges != ((void*)0))
  FREE(cm->cmranges);
 if (cm->hicolormap != ((void*)0))
  FREE(cm->hicolormap);
}
