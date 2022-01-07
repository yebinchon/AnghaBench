
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ri_RelationDesc; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef int LockTupleMode ;
typedef int EState ;
typedef int Bitmapset ;


 int * GetAllUpdatedColumns (TYPE_1__*,int *) ;
 int INDEX_ATTR_BITMAP_KEY ;
 int LockTupleExclusive ;
 int LockTupleNoKeyExclusive ;
 int * RelationGetIndexAttrBitmap (int ,int ) ;
 scalar_t__ bms_overlap (int *,int *) ;

LockTupleMode
ExecUpdateLockMode(EState *estate, ResultRelInfo *relinfo)
{
 Bitmapset *keyCols;
 Bitmapset *updatedCols;






 updatedCols = GetAllUpdatedColumns(relinfo, estate);
 keyCols = RelationGetIndexAttrBitmap(relinfo->ri_RelationDesc,
           INDEX_ATTR_BITMAP_KEY);

 if (bms_overlap(keyCols, updatedCols))
  return LockTupleExclusive;

 return LockTupleNoKeyExclusive;
}
