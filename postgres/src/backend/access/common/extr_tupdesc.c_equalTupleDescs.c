
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_12__ {scalar_t__ has_not_null; scalar_t__ has_generated_stored; int num_defval; int num_check; TYPE_4__* check; TYPE_5__* missing; TYPE_6__* defval; } ;
typedef TYPE_2__ TupleConstr ;
struct TYPE_16__ {scalar_t__ adnum; int adbin; } ;
struct TYPE_15__ {scalar_t__ am_present; int am_value; } ;
struct TYPE_14__ {scalar_t__ ccvalid; scalar_t__ ccnoinherit; int ccbin; int ccname; } ;
struct TYPE_13__ {scalar_t__ atttypid; scalar_t__ attstattarget; scalar_t__ attlen; scalar_t__ attndims; scalar_t__ atttypmod; scalar_t__ attbyval; scalar_t__ attstorage; scalar_t__ attalign; scalar_t__ attnotnull; scalar_t__ atthasdef; scalar_t__ attidentity; scalar_t__ attgenerated; scalar_t__ attisdropped; scalar_t__ attislocal; scalar_t__ attinhcount; scalar_t__ attcollation; int attname; } ;
struct TYPE_11__ {int natts; scalar_t__ tdtypeid; TYPE_2__* constr; } ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__ ConstrCheck ;
typedef TYPE_5__ AttrMissing ;
typedef TYPE_6__ AttrDefault ;


 int NameStr (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int datumIsEqual (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ strcmp (int ,int ) ;

bool
equalTupleDescs(TupleDesc tupdesc1, TupleDesc tupdesc2)
{
 int i,
    j,
    n;

 if (tupdesc1->natts != tupdesc2->natts)
  return 0;
 if (tupdesc1->tdtypeid != tupdesc2->tdtypeid)
  return 0;

 for (i = 0; i < tupdesc1->natts; i++)
 {
  Form_pg_attribute attr1 = TupleDescAttr(tupdesc1, i);
  Form_pg_attribute attr2 = TupleDescAttr(tupdesc2, i);
  if (strcmp(NameStr(attr1->attname), NameStr(attr2->attname)) != 0)
   return 0;
  if (attr1->atttypid != attr2->atttypid)
   return 0;
  if (attr1->attstattarget != attr2->attstattarget)
   return 0;
  if (attr1->attlen != attr2->attlen)
   return 0;
  if (attr1->attndims != attr2->attndims)
   return 0;
  if (attr1->atttypmod != attr2->atttypmod)
   return 0;
  if (attr1->attbyval != attr2->attbyval)
   return 0;
  if (attr1->attstorage != attr2->attstorage)
   return 0;
  if (attr1->attalign != attr2->attalign)
   return 0;
  if (attr1->attnotnull != attr2->attnotnull)
   return 0;
  if (attr1->atthasdef != attr2->atthasdef)
   return 0;
  if (attr1->attidentity != attr2->attidentity)
   return 0;
  if (attr1->attgenerated != attr2->attgenerated)
   return 0;
  if (attr1->attisdropped != attr2->attisdropped)
   return 0;
  if (attr1->attislocal != attr2->attislocal)
   return 0;
  if (attr1->attinhcount != attr2->attinhcount)
   return 0;
  if (attr1->attcollation != attr2->attcollation)
   return 0;

 }

 if (tupdesc1->constr != ((void*)0))
 {
  TupleConstr *constr1 = tupdesc1->constr;
  TupleConstr *constr2 = tupdesc2->constr;

  if (constr2 == ((void*)0))
   return 0;
  if (constr1->has_not_null != constr2->has_not_null)
   return 0;
  if (constr1->has_generated_stored != constr2->has_generated_stored)
   return 0;
  n = constr1->num_defval;
  if (n != (int) constr2->num_defval)
   return 0;
  for (i = 0; i < n; i++)
  {
   AttrDefault *defval1 = constr1->defval + i;
   AttrDefault *defval2 = constr2->defval;






   for (j = 0; j < n; defval2++, j++)
   {
    if (defval1->adnum == defval2->adnum)
     break;
   }
   if (j >= n)
    return 0;
   if (strcmp(defval1->adbin, defval2->adbin) != 0)
    return 0;
  }
  if (constr1->missing)
  {
   if (!constr2->missing)
    return 0;
   for (i = 0; i < tupdesc1->natts; i++)
   {
    AttrMissing *missval1 = constr1->missing + i;
    AttrMissing *missval2 = constr2->missing + i;

    if (missval1->am_present != missval2->am_present)
     return 0;
    if (missval1->am_present)
    {
     Form_pg_attribute missatt1 = TupleDescAttr(tupdesc1, i);

     if (!datumIsEqual(missval1->am_value, missval2->am_value,
           missatt1->attbyval, missatt1->attlen))
      return 0;
    }
   }
  }
  else if (constr2->missing)
   return 0;
  n = constr1->num_check;
  if (n != (int) constr2->num_check)
   return 0;
  for (i = 0; i < n; i++)
  {
   ConstrCheck *check1 = constr1->check + i;
   ConstrCheck *check2 = constr2->check;






   for (j = 0; j < n; check2++, j++)
   {
    if (strcmp(check1->ccname, check2->ccname) == 0 &&
     strcmp(check1->ccbin, check2->ccbin) == 0 &&
     check1->ccvalid == check2->ccvalid &&
     check1->ccnoinherit == check2->ccnoinherit)
     break;
   }
   if (j >= n)
    return 0;
  }
 }
 else if (tupdesc2->constr != ((void*)0))
  return 0;
 return 1;
}
