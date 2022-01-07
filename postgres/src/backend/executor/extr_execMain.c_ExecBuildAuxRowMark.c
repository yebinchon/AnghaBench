
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int resname ;
struct TYPE_6__ {void* toidAttNo; void* wholeAttNo; void* ctidAttNo; TYPE_1__* rowmark; } ;
struct TYPE_5__ {scalar_t__ markType; int rowmarkId; scalar_t__ rti; scalar_t__ prti; } ;
typedef int List ;
typedef TYPE_1__ ExecRowMark ;
typedef TYPE_2__ ExecAuxRowMark ;


 int AttributeNumberIsValid (void*) ;
 int ERROR ;
 void* ExecFindJunkAttributeInTlist (int *,char*) ;
 scalar_t__ ROW_MARK_COPY ;
 int elog (int ,char*,char*) ;
 scalar_t__ palloc0 (int) ;
 int snprintf (char*,int,char*,int) ;

ExecAuxRowMark *
ExecBuildAuxRowMark(ExecRowMark *erm, List *targetlist)
{
 ExecAuxRowMark *aerm = (ExecAuxRowMark *) palloc0(sizeof(ExecAuxRowMark));
 char resname[32];

 aerm->rowmark = erm;


 if (erm->markType != ROW_MARK_COPY)
 {

  snprintf(resname, sizeof(resname), "ctid%u", erm->rowmarkId);
  aerm->ctidAttNo = ExecFindJunkAttributeInTlist(targetlist,
                resname);
  if (!AttributeNumberIsValid(aerm->ctidAttNo))
   elog(ERROR, "could not find junk %s column", resname);
 }
 else
 {

  snprintf(resname, sizeof(resname), "wholerow%u", erm->rowmarkId);
  aerm->wholeAttNo = ExecFindJunkAttributeInTlist(targetlist,
              resname);
  if (!AttributeNumberIsValid(aerm->wholeAttNo))
   elog(ERROR, "could not find junk %s column", resname);
 }


 if (erm->rti != erm->prti)
 {
  snprintf(resname, sizeof(resname), "tableoid%u", erm->rowmarkId);
  aerm->toidAttNo = ExecFindJunkAttributeInTlist(targetlist,
                resname);
  if (!AttributeNumberIsValid(aerm->toidAttNo))
   elog(ERROR, "could not find junk %s column", resname);
 }

 return aerm;
}
