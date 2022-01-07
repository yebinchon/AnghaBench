
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bits8 ;
typedef int TupleDesc ;
struct TYPE_12__ {TYPE_2__** bd_info; TYPE_1__* bd_tupdesc; } ;
struct TYPE_11__ {int attlen; int attalign; } ;
struct TYPE_10__ {int oi_nstored; } ;
struct TYPE_9__ {int natts; } ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;
typedef TYPE_4__ BrinDesc ;


 TYPE_3__* TupleDescAttr (int ,int) ;
 long att_addlength_pointer (long,int,char*) ;
 long att_align_nominal (long,int ) ;
 long att_align_pointer (long,int ,int,char*) ;
 int att_isnull (int,int *) ;
 int brtuple_disk_tupdesc (TYPE_4__*) ;
 int fetchatt (TYPE_3__*,char*) ;

__attribute__((used)) static inline void
brin_deconstruct_tuple(BrinDesc *brdesc,
        char *tp, bits8 *nullbits, bool nulls,
        Datum *values, bool *allnulls, bool *hasnulls)
{
 int attnum;
 int stored;
 TupleDesc diskdsc;
 long off;







 for (attnum = 0; attnum < brdesc->bd_tupdesc->natts; attnum++)
 {





  allnulls[attnum] = nulls && !att_isnull(attnum, nullbits);
  hasnulls[attnum] =
   nulls && !att_isnull(brdesc->bd_tupdesc->natts + attnum, nullbits);
 }






 diskdsc = brtuple_disk_tupdesc(brdesc);
 stored = 0;
 off = 0;
 for (attnum = 0; attnum < brdesc->bd_tupdesc->natts; attnum++)
 {
  int datumno;

  if (allnulls[attnum])
  {
   stored += brdesc->bd_info[attnum]->oi_nstored;
   continue;
  }

  for (datumno = 0;
    datumno < brdesc->bd_info[attnum]->oi_nstored;
    datumno++)
  {
   Form_pg_attribute thisatt = TupleDescAttr(diskdsc, stored);

   if (thisatt->attlen == -1)
   {
    off = att_align_pointer(off, thisatt->attalign, -1,
          tp + off);
   }
   else
   {

    off = att_align_nominal(off, thisatt->attalign);
   }

   values[stored++] = fetchatt(thisatt, tp + off);

   off = att_addlength_pointer(off, thisatt->attlen, tp + off);
  }
 }
}
