
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* es_param_exec_vals; } ;
struct TYPE_4__ {int * execPlan; int isnull; int value; } ;
typedef TYPE_1__ ParamExecData ;
typedef TYPE_2__ EState ;


 int datumRestore (char**,int *) ;
 int memcpy (int*,char*,int) ;

__attribute__((used)) static void
RestoreParamExecParams(char *start_address, EState *estate)
{
 int nparams;
 int i;
 int paramid;

 memcpy(&nparams, start_address, sizeof(int));
 start_address += sizeof(int);

 for (i = 0; i < nparams; i++)
 {
  ParamExecData *prm;


  memcpy(&paramid, start_address, sizeof(int));
  start_address += sizeof(int);
  prm = &(estate->es_param_exec_vals[paramid]);


  prm->value = datumRestore(&start_address, &prm->isnull);
  prm->execPlan = ((void*)0);
 }
}
