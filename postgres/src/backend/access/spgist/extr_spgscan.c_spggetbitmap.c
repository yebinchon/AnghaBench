
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_6__ {int xs_snapshot; int indexRelation; int opaque; } ;
struct TYPE_5__ {int want_itup; scalar_t__ ntids; int * tbm; } ;
typedef int TIDBitmap ;
typedef TYPE_1__* SpGistScanOpaque ;
typedef TYPE_2__* IndexScanDesc ;


 int spgWalk (int ,TYPE_1__*,int,int ,int ) ;
 int storeBitmap ;

int64
spggetbitmap(IndexScanDesc scan, TIDBitmap *tbm)
{
 SpGistScanOpaque so = (SpGistScanOpaque) scan->opaque;


 so->want_itup = 0;

 so->tbm = tbm;
 so->ntids = 0;

 spgWalk(scan->indexRelation, so, 1, storeBitmap, scan->xs_snapshot);

 return so->ntids;
}
