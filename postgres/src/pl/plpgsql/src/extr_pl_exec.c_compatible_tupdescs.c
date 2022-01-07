
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ attisdropped; scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attlen; scalar_t__ attalign; } ;
struct TYPE_7__ {int natts; } ;
typedef TYPE_2__* Form_pg_attribute ;


 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;

__attribute__((used)) static bool
compatible_tupdescs(TupleDesc src_tupdesc, TupleDesc dst_tupdesc)
{
 int i;


 if (dst_tupdesc->natts != src_tupdesc->natts)
  return 0;

 for (i = 0; i < dst_tupdesc->natts; i++)
 {
  Form_pg_attribute dattr = TupleDescAttr(dst_tupdesc, i);
  Form_pg_attribute sattr = TupleDescAttr(src_tupdesc, i);

  if (dattr->attisdropped != sattr->attisdropped)
   return 0;
  if (!dattr->attisdropped)
  {

   if (dattr->atttypid != sattr->atttypid ||
    (dattr->atttypmod >= 0 &&
     dattr->atttypmod != sattr->atttypmod))
    return 0;
  }
  else
  {

   if (dattr->attlen != sattr->attlen ||
    dattr->attalign != sattr->attalign)
    return 0;
  }
 }
 return 1;
}
