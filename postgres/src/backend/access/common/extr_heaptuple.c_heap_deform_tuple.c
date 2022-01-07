
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int bits8 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_16__ {scalar_t__ attcacheoff; int attlen; int attalign; } ;
struct TYPE_15__ {TYPE_2__* t_data; } ;
struct TYPE_14__ {int t_hoff; int * t_bits; } ;
struct TYPE_13__ {int natts; } ;
typedef TYPE_2__* HeapTupleHeader ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_attribute ;
typedef scalar_t__ Datum ;


 int HeapTupleHasNulls (TYPE_3__*) ;
 int HeapTupleHeaderGetNatts (TYPE_2__*) ;
 int Min (int,int) ;
 TYPE_4__* TupleDescAttr (TYPE_1__*,int) ;
 scalar_t__ att_addlength_pointer (scalar_t__,int,char*) ;
 scalar_t__ att_align_nominal (scalar_t__,int ) ;
 scalar_t__ att_align_pointer (scalar_t__,int ,int,char*) ;
 scalar_t__ att_isnull (int,int *) ;
 scalar_t__ fetchatt (TYPE_4__*,char*) ;
 scalar_t__ getmissingattr (TYPE_1__*,int,int*) ;

void
heap_deform_tuple(HeapTuple tuple, TupleDesc tupleDesc,
      Datum *values, bool *isnull)
{
 HeapTupleHeader tup = tuple->t_data;
 bool hasnulls = HeapTupleHasNulls(tuple);
 int tdesc_natts = tupleDesc->natts;
 int natts;
 int attnum;
 char *tp;
 uint32 off;
 bits8 *bp = tup->t_bits;
 bool slow = 0;

 natts = HeapTupleHeaderGetNatts(tup);






 natts = Min(natts, tdesc_natts);

 tp = (char *) tup + tup->t_hoff;

 off = 0;

 for (attnum = 0; attnum < natts; attnum++)
 {
  Form_pg_attribute thisatt = TupleDescAttr(tupleDesc, attnum);

  if (hasnulls && att_isnull(attnum, bp))
  {
   values[attnum] = (Datum) 0;
   isnull[attnum] = 1;
   slow = 1;
   continue;
  }

  isnull[attnum] = 0;

  if (!slow && thisatt->attcacheoff >= 0)
   off = thisatt->attcacheoff;
  else if (thisatt->attlen == -1)
  {






   if (!slow &&
    off == att_align_nominal(off, thisatt->attalign))
    thisatt->attcacheoff = off;
   else
   {
    off = att_align_pointer(off, thisatt->attalign, -1,
          tp + off);
    slow = 1;
   }
  }
  else
  {

   off = att_align_nominal(off, thisatt->attalign);

   if (!slow)
    thisatt->attcacheoff = off;
  }

  values[attnum] = fetchatt(thisatt, tp + off);

  off = att_addlength_pointer(off, thisatt->attlen, tp + off);

  if (thisatt->attlen <= 0)
   slow = 1;
 }





 for (; attnum < tdesc_natts; attnum++)
  values[attnum] = getmissingattr(tupleDesc, attnum + 1, &isnull[attnum]);
}
