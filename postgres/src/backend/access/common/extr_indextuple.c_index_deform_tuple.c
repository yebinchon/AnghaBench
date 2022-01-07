
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int bits8 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_12__ {int attcacheoff; int attlen; int attalign; } ;
struct TYPE_11__ {int t_info; } ;
struct TYPE_10__ {int natts; } ;
typedef int IndexTupleData ;
typedef TYPE_2__* IndexTuple ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;


 int Assert (int) ;
 int INDEX_MAX_KEYS ;
 int IndexInfoFindDataOffset (int ) ;
 int IndexTupleHasNulls (TYPE_2__*) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int att_addlength_pointer (int,int,char*) ;
 int att_align_nominal (int,int ) ;
 int att_align_pointer (int,int ,int,char*) ;
 scalar_t__ att_isnull (int,int *) ;
 int fetchatt (TYPE_3__*,char*) ;

void
index_deform_tuple(IndexTuple tup, TupleDesc tupleDescriptor,
       Datum *values, bool *isnull)
{
 int hasnulls = IndexTupleHasNulls(tup);
 int natts = tupleDescriptor->natts;
 int attnum;
 char *tp;
 int off;
 bits8 *bp;
 bool slow = 0;


 Assert(natts <= INDEX_MAX_KEYS);


 bp = (bits8 *) ((char *) tup + sizeof(IndexTupleData));

 tp = (char *) tup + IndexInfoFindDataOffset(tup->t_info);
 off = 0;

 for (attnum = 0; attnum < natts; attnum++)
 {
  Form_pg_attribute thisatt = TupleDescAttr(tupleDescriptor, attnum);

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
}
