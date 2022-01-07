
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_13__ {int n_members; TYPE_1__** members; int ordered; } ;
struct TYPE_12__ {scalar_t__ amoplefttype; scalar_t__ amoprighttype; int amopstrategy; } ;
struct TYPE_11__ {scalar_t__ amproclefttype; scalar_t__ amprocrighttype; int amprocnum; } ;
struct TYPE_10__ {scalar_t__ lefttype; scalar_t__ righttype; int operatorset; int functionset; } ;
struct TYPE_9__ {int tuple; } ;
typedef TYPE_2__ OpFamilyOpFuncGroup ;
typedef int List ;
typedef TYPE_3__* Form_pg_amproc ;
typedef TYPE_4__* Form_pg_amop ;
typedef TYPE_5__ CatCList ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int * NIL ;
 int elog (int ,char*) ;
 int * lappend (int *,TYPE_2__*) ;
 scalar_t__ palloc (int) ;

List *
identify_opfamily_groups(CatCList *oprlist, CatCList *proclist)
{
 List *result = NIL;
 OpFamilyOpFuncGroup *thisgroup;
 Form_pg_amop oprform;
 Form_pg_amproc procform;
 int io,
    ip;


 if (!oprlist->ordered || !proclist->ordered)
  elog(ERROR, "cannot validate operator family without ordered data");






 thisgroup = ((void*)0);
 io = ip = 0;
 if (io < oprlist->n_members)
 {
  oprform = (Form_pg_amop) GETSTRUCT(&oprlist->members[io]->tuple);
  io++;
 }
 else
  oprform = ((void*)0);
 if (ip < proclist->n_members)
 {
  procform = (Form_pg_amproc) GETSTRUCT(&proclist->members[ip]->tuple);
  ip++;
 }
 else
  procform = ((void*)0);

 while (oprform || procform)
 {
  if (oprform && thisgroup &&
   oprform->amoplefttype == thisgroup->lefttype &&
   oprform->amoprighttype == thisgroup->righttype)
  {



   if (oprform->amopstrategy > 0 && oprform->amopstrategy < 64)
    thisgroup->operatorset |= ((uint64) 1) << oprform->amopstrategy;

   if (io < oprlist->n_members)
   {
    oprform = (Form_pg_amop) GETSTRUCT(&oprlist->members[io]->tuple);
    io++;
   }
   else
    oprform = ((void*)0);
   continue;
  }

  if (procform && thisgroup &&
   procform->amproclefttype == thisgroup->lefttype &&
   procform->amprocrighttype == thisgroup->righttype)
  {



   if (procform->amprocnum > 0 && procform->amprocnum < 64)
    thisgroup->functionset |= ((uint64) 1) << procform->amprocnum;

   if (ip < proclist->n_members)
   {
    procform = (Form_pg_amproc) GETSTRUCT(&proclist->members[ip]->tuple);
    ip++;
   }
   else
    procform = ((void*)0);
   continue;
  }


  thisgroup = (OpFamilyOpFuncGroup *) palloc(sizeof(OpFamilyOpFuncGroup));
  if (oprform &&
   (!procform ||
    (oprform->amoplefttype < procform->amproclefttype ||
     (oprform->amoplefttype == procform->amproclefttype &&
      oprform->amoprighttype < procform->amprocrighttype))))
  {
   thisgroup->lefttype = oprform->amoplefttype;
   thisgroup->righttype = oprform->amoprighttype;
  }
  else
  {
   thisgroup->lefttype = procform->amproclefttype;
   thisgroup->righttype = procform->amprocrighttype;
  }
  thisgroup->operatorset = thisgroup->functionset = 0;
  result = lappend(result, thisgroup);
 }

 return result;
}
