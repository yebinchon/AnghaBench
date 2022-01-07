
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_11__ {int attbyval; } ;
struct TYPE_10__ {scalar_t__ tdrefcount; int num_defval; int natts; int num_check; struct TYPE_10__* constr; struct TYPE_10__* ccbin; struct TYPE_10__* ccname; struct TYPE_10__* check; int am_value; scalar_t__ am_present; struct TYPE_10__* missing; struct TYPE_10__* adbin; struct TYPE_10__* defval; } ;
typedef TYPE_1__ ConstrCheck ;
typedef TYPE_1__ AttrMissing ;
typedef TYPE_1__ AttrDefault ;


 int Assert (int) ;
 TYPE_1__* DatumGetPointer (int ) ;
 TYPE_6__* TupleDescAttr (TYPE_1__*,int) ;
 int pfree (TYPE_1__*) ;

void
FreeTupleDesc(TupleDesc tupdesc)
{
 int i;





 Assert(tupdesc->tdrefcount <= 0);

 if (tupdesc->constr)
 {
  if (tupdesc->constr->num_defval > 0)
  {
   AttrDefault *attrdef = tupdesc->constr->defval;

   for (i = tupdesc->constr->num_defval - 1; i >= 0; i--)
   {
    if (attrdef[i].adbin)
     pfree(attrdef[i].adbin);
   }
   pfree(attrdef);
  }
  if (tupdesc->constr->missing)
  {
   AttrMissing *attrmiss = tupdesc->constr->missing;

   for (i = tupdesc->natts - 1; i >= 0; i--)
   {
    if (attrmiss[i].am_present
     && !TupleDescAttr(tupdesc, i)->attbyval)
     pfree(DatumGetPointer(attrmiss[i].am_value));
   }
   pfree(attrmiss);
  }
  if (tupdesc->constr->num_check > 0)
  {
   ConstrCheck *check = tupdesc->constr->check;

   for (i = tupdesc->constr->num_check - 1; i >= 0; i--)
   {
    if (check[i].ccname)
     pfree(check[i].ccname);
    if (check[i].ccbin)
     pfree(check[i].ccbin);
   }
   pfree(check);
  }
  pfree(tupdesc->constr);
 }

 pfree(tupdesc);
}
