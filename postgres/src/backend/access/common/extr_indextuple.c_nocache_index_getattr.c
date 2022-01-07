
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int bits8 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_13__ {scalar_t__ attcacheoff; scalar_t__ attlen; int attalign; } ;
struct TYPE_12__ {int t_info; } ;
struct TYPE_11__ {int natts; } ;
typedef int IndexTupleData ;
typedef TYPE_2__* IndexTuple ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;


 int Assert (int) ;
 int IndexInfoFindDataOffset (int ) ;
 scalar_t__ IndexTupleHasNulls (TYPE_2__*) ;
 scalar_t__ IndexTupleHasVarwidths (TYPE_2__*) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int att_addlength_pointer (int,int,char*) ;
 int att_align_nominal (int,int ) ;
 int att_align_pointer (int,int ,int,char*) ;
 scalar_t__ att_isnull (int,int*) ;
 int fetchatt (TYPE_3__*,char*) ;

Datum
nocache_index_getattr(IndexTuple tup,
       int attnum,
       TupleDesc tupleDesc)
{
 char *tp;
 bits8 *bp = ((void*)0);
 bool slow = 0;
 int data_off;
 int off;
 data_off = IndexInfoFindDataOffset(tup->t_info);

 attnum--;

 if (IndexTupleHasNulls(tup))
 {







  bp = (bits8 *) ((char *) tup + sizeof(IndexTupleData));




  {
   int byte = attnum >> 3;
   int finalbit = attnum & 0x07;


   if ((~bp[byte]) & ((1 << finalbit) - 1))
    slow = 1;
   else
   {

    int i;

    for (i = 0; i < byte; i++)
    {
     if (bp[i] != 0xFF)
     {
      slow = 1;
      break;
     }
    }
   }
  }
 }

 tp = (char *) tup + data_off;

 if (!slow)
 {
  Form_pg_attribute att;





  att = TupleDescAttr(tupleDesc, attnum);
  if (att->attcacheoff >= 0)
   return fetchatt(att, tp + att->attcacheoff);






  if (IndexTupleHasVarwidths(tup))
  {
   int j;

   for (j = 0; j <= attnum; j++)
   {
    if (TupleDescAttr(tupleDesc, j)->attlen <= 0)
    {
     slow = 1;
     break;
    }
   }
  }
 }

 if (!slow)
 {
  int natts = tupleDesc->natts;
  int j = 1;
  TupleDescAttr(tupleDesc, 0)->attcacheoff = 0;


  while (j < natts && TupleDescAttr(tupleDesc, j)->attcacheoff > 0)
   j++;

  off = TupleDescAttr(tupleDesc, j - 1)->attcacheoff +
   TupleDescAttr(tupleDesc, j - 1)->attlen;

  for (; j < natts; j++)
  {
   Form_pg_attribute att = TupleDescAttr(tupleDesc, j);

   if (att->attlen <= 0)
    break;

   off = att_align_nominal(off, att->attalign);

   att->attcacheoff = off;

   off += att->attlen;
  }

  Assert(j > attnum);

  off = TupleDescAttr(tupleDesc, attnum)->attcacheoff;
 }
 else
 {
  bool usecache = 1;
  int i;
  off = 0;
  for (i = 0;; i++)
  {
   Form_pg_attribute att = TupleDescAttr(tupleDesc, i);

   if (IndexTupleHasNulls(tup) && att_isnull(i, bp))
   {
    usecache = 0;
    continue;
   }


   if (usecache && att->attcacheoff >= 0)
    off = att->attcacheoff;
   else if (att->attlen == -1)
   {






    if (usecache &&
     off == att_align_nominal(off, att->attalign))
     att->attcacheoff = off;
    else
    {
     off = att_align_pointer(off, att->attalign, -1,
           tp + off);
     usecache = 0;
    }
   }
   else
   {

    off = att_align_nominal(off, att->attalign);

    if (usecache)
     att->attcacheoff = off;
   }

   if (i == attnum)
    break;

   off = att_addlength_pointer(off, att->attlen, tp + off);

   if (usecache && att->attlen <= 0)
    usecache = 0;
  }
 }

 return fetchatt(TupleDescAttr(tupleDesc, attnum), tp + off);
}
