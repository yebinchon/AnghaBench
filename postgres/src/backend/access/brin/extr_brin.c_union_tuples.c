
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * rd_indcollation; } ;
struct TYPE_13__ {TYPE_2__* bt_columns; } ;
struct TYPE_12__ {TYPE_7__* bd_index; TYPE_1__* bd_tupdesc; } ;
struct TYPE_11__ {int natts; } ;
typedef int MemoryContext ;
typedef int FmgrInfo ;
typedef TYPE_2__ BrinValues ;
typedef int BrinTuple ;
typedef TYPE_3__ BrinMemTuple ;
typedef TYPE_2__ BrinDesc ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int BRIN_PROCNUM_UNION ;
 int CurrentMemoryContext ;
 int FunctionCall3Coll (int *,int ,int ,int ,int ) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (TYPE_2__*) ;
 TYPE_3__* brin_deform_tuple (TYPE_2__*,int *,int *) ;
 int * index_getprocinfo (TYPE_7__*,int,int ) ;

__attribute__((used)) static void
union_tuples(BrinDesc *bdesc, BrinMemTuple *a, BrinTuple *b)
{
 int keyno;
 BrinMemTuple *db;
 MemoryContext cxt;
 MemoryContext oldcxt;


 cxt = AllocSetContextCreate(CurrentMemoryContext,
        "brin union",
        ALLOCSET_DEFAULT_SIZES);
 oldcxt = MemoryContextSwitchTo(cxt);
 db = brin_deform_tuple(bdesc, b, ((void*)0));
 MemoryContextSwitchTo(oldcxt);

 for (keyno = 0; keyno < bdesc->bd_tupdesc->natts; keyno++)
 {
  FmgrInfo *unionFn;
  BrinValues *col_a = &a->bt_columns[keyno];
  BrinValues *col_b = &db->bt_columns[keyno];

  unionFn = index_getprocinfo(bdesc->bd_index, keyno + 1,
         BRIN_PROCNUM_UNION);
  FunctionCall3Coll(unionFn,
        bdesc->bd_index->rd_indcollation[keyno],
        PointerGetDatum(bdesc),
        PointerGetDatum(col_a),
        PointerGetDatum(col_b));
 }

 MemoryContextDelete(cxt);
}
