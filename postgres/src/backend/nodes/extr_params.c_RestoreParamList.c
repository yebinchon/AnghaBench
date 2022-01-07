
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_6__ {int ptype; int pflags; int isnull; int value; } ;
struct TYPE_5__ {TYPE_2__* params; } ;
typedef TYPE_1__* ParamListInfo ;
typedef TYPE_2__ ParamExternData ;
typedef int Oid ;


 int datumRestore (char**,int *) ;
 TYPE_1__* makeParamList (int) ;
 int memcpy (int*,char*,int) ;

ParamListInfo
RestoreParamList(char **start_address)
{
 ParamListInfo paramLI;
 int nparams;

 memcpy(&nparams, *start_address, sizeof(int));
 *start_address += sizeof(int);

 paramLI = makeParamList(nparams);

 for (int i = 0; i < nparams; i++)
 {
  ParamExternData *prm = &paramLI->params[i];


  memcpy(&prm->ptype, *start_address, sizeof(Oid));
  *start_address += sizeof(Oid);


  memcpy(&prm->pflags, *start_address, sizeof(uint16));
  *start_address += sizeof(uint16);


  prm->value = datumRestore(start_address, &prm->isnull);
 }

 return paramLI;
}
