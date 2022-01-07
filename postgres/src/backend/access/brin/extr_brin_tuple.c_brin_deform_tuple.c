
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int bits8 ;
struct TYPE_27__ {TYPE_3__** bd_info; TYPE_1__* bd_tupdesc; } ;
struct TYPE_26__ {int bt_placeholder; int* bt_allnulls; int* bt_hasnulls; TYPE_4__* bt_columns; int bt_context; int * bt_values; int bt_blkno; } ;
struct TYPE_25__ {int bt_blkno; } ;
struct TYPE_24__ {int bv_hasnulls; int bv_allnulls; int * bv_values; } ;
struct TYPE_23__ {int oi_nstored; TYPE_2__** oi_typcache; } ;
struct TYPE_22__ {int typlen; int typbyval; } ;
struct TYPE_21__ {int natts; } ;
typedef int MemoryContext ;
typedef int Datum ;
typedef TYPE_5__ BrinTuple ;
typedef TYPE_6__ BrinMemTuple ;
typedef TYPE_7__ BrinDesc ;


 int BrinTupleDataOffset (TYPE_5__*) ;
 scalar_t__ BrinTupleHasNulls (TYPE_5__*) ;
 scalar_t__ BrinTupleIsPlaceholder (TYPE_5__*) ;
 int MemoryContextSwitchTo (int ) ;
 int SizeOfBrinTuple ;
 int brin_deconstruct_tuple (TYPE_7__*,char*,int *,scalar_t__,int *,int*,int*) ;
 TYPE_6__* brin_memtuple_initialize (TYPE_6__*,TYPE_7__*) ;
 TYPE_6__* brin_new_memtuple (TYPE_7__*) ;
 int datumCopy (int ,int ,int ) ;

BrinMemTuple *
brin_deform_tuple(BrinDesc *brdesc, BrinTuple *tuple, BrinMemTuple *dMemtuple)
{
 BrinMemTuple *dtup;
 Datum *values;
 bool *allnulls;
 bool *hasnulls;
 char *tp;
 bits8 *nullbits;
 int keyno;
 int valueno;
 MemoryContext oldcxt;

 dtup = dMemtuple ? brin_memtuple_initialize(dMemtuple, brdesc) :
  brin_new_memtuple(brdesc);

 if (BrinTupleIsPlaceholder(tuple))
  dtup->bt_placeholder = 1;
 dtup->bt_blkno = tuple->bt_blkno;

 values = dtup->bt_values;
 allnulls = dtup->bt_allnulls;
 hasnulls = dtup->bt_hasnulls;

 tp = (char *) tuple + BrinTupleDataOffset(tuple);

 if (BrinTupleHasNulls(tuple))
  nullbits = (bits8 *) ((char *) tuple + SizeOfBrinTuple);
 else
  nullbits = ((void*)0);
 brin_deconstruct_tuple(brdesc,
         tp, nullbits, BrinTupleHasNulls(tuple),
         values, allnulls, hasnulls);





 oldcxt = MemoryContextSwitchTo(dtup->bt_context);
 for (valueno = 0, keyno = 0; keyno < brdesc->bd_tupdesc->natts; keyno++)
 {
  int i;

  if (allnulls[keyno])
  {
   valueno += brdesc->bd_info[keyno]->oi_nstored;
   continue;
  }





  for (i = 0; i < brdesc->bd_info[keyno]->oi_nstored; i++)
   dtup->bt_columns[keyno].bv_values[i] =
    datumCopy(values[valueno++],
        brdesc->bd_info[keyno]->oi_typcache[i]->typbyval,
        brdesc->bd_info[keyno]->oi_typcache[i]->typlen);

  dtup->bt_columns[keyno].bv_hasnulls = hasnulls[keyno];
  dtup->bt_columns[keyno].bv_allnulls = 0;
 }

 MemoryContextSwitchTo(oldcxt);

 return dtup;
}
