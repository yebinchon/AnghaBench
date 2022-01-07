
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nentries; scalar_t__ maxentries; } ;
typedef TYPE_1__ TIDBitmap ;
typedef int BlockNumber ;


 int tbm_lossify (TYPE_1__*) ;
 int tbm_mark_page_lossy (TYPE_1__*,int ) ;

void
tbm_add_page(TIDBitmap *tbm, BlockNumber pageno)
{

 tbm_mark_page_lossy(tbm, pageno);

 if (tbm->nentries > tbm->maxentries)
  tbm_lossify(tbm);
}
