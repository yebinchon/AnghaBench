
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_15__ {int num_defval; int num_check; TYPE_3__* check; TYPE_3__* missing; TYPE_3__* defval; int has_generated_stored; int has_not_null; } ;
typedef TYPE_2__ TupleConstr ;
struct TYPE_16__ {int ccnoinherit; int ccvalid; void* ccbin; void* ccname; int attlen; int attbyval; int am_value; scalar_t__ am_present; void* adbin; } ;
struct TYPE_14__ {int natts; int tdtypmod; int tdtypeid; TYPE_2__* constr; } ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int FormData_pg_attribute ;
typedef TYPE_3__ ConstrCheck ;
typedef TYPE_3__ AttrMissing ;
typedef TYPE_3__ AttrDefault ;


 TYPE_1__* CreateTemplateTupleDesc (int) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int datumCopy (int ,int ,int ) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 void* pstrdup (void*) ;

TupleDesc
CreateTupleDescCopyConstr(TupleDesc tupdesc)
{
 TupleDesc desc;
 TupleConstr *constr = tupdesc->constr;
 int i;

 desc = CreateTemplateTupleDesc(tupdesc->natts);


 memcpy(TupleDescAttr(desc, 0),
     TupleDescAttr(tupdesc, 0),
     desc->natts * sizeof(FormData_pg_attribute));


 if (constr)
 {
  TupleConstr *cpy = (TupleConstr *) palloc0(sizeof(TupleConstr));

  cpy->has_not_null = constr->has_not_null;
  cpy->has_generated_stored = constr->has_generated_stored;

  if ((cpy->num_defval = constr->num_defval) > 0)
  {
   cpy->defval = (AttrDefault *) palloc(cpy->num_defval * sizeof(AttrDefault));
   memcpy(cpy->defval, constr->defval, cpy->num_defval * sizeof(AttrDefault));
   for (i = cpy->num_defval - 1; i >= 0; i--)
   {
    if (constr->defval[i].adbin)
     cpy->defval[i].adbin = pstrdup(constr->defval[i].adbin);
   }
  }

  if (constr->missing)
  {
   cpy->missing = (AttrMissing *) palloc(tupdesc->natts * sizeof(AttrMissing));
   memcpy(cpy->missing, constr->missing, tupdesc->natts * sizeof(AttrMissing));
   for (i = tupdesc->natts - 1; i >= 0; i--)
   {
    if (constr->missing[i].am_present)
    {
     Form_pg_attribute attr = TupleDescAttr(tupdesc, i);

     cpy->missing[i].am_value = datumCopy(constr->missing[i].am_value,
               attr->attbyval,
               attr->attlen);
    }
   }
  }

  if ((cpy->num_check = constr->num_check) > 0)
  {
   cpy->check = (ConstrCheck *) palloc(cpy->num_check * sizeof(ConstrCheck));
   memcpy(cpy->check, constr->check, cpy->num_check * sizeof(ConstrCheck));
   for (i = cpy->num_check - 1; i >= 0; i--)
   {
    if (constr->check[i].ccname)
     cpy->check[i].ccname = pstrdup(constr->check[i].ccname);
    if (constr->check[i].ccbin)
     cpy->check[i].ccbin = pstrdup(constr->check[i].ccbin);
    cpy->check[i].ccvalid = constr->check[i].ccvalid;
    cpy->check[i].ccnoinherit = constr->check[i].ccnoinherit;
   }
  }

  desc->constr = cpy;
 }


 desc->tdtypeid = tupdesc->tdtypeid;
 desc->tdtypmod = tupdesc->tdtypmod;

 return desc;
}
