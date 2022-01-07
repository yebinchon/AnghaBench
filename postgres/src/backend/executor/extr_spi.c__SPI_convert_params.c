
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ptype; int pflags; int isnull; int value; } ;
struct TYPE_5__ {TYPE_2__* params; } ;
typedef TYPE_1__* ParamListInfo ;
typedef TYPE_2__ ParamExternData ;
typedef int Oid ;
typedef int Datum ;


 int PARAM_FLAG_CONST ;
 TYPE_1__* makeParamList (int) ;

__attribute__((used)) static ParamListInfo
_SPI_convert_params(int nargs, Oid *argtypes,
     Datum *Values, const char *Nulls)
{
 ParamListInfo paramLI;

 if (nargs > 0)
 {
  paramLI = makeParamList(nargs);

  for (int i = 0; i < nargs; i++)
  {
   ParamExternData *prm = &paramLI->params[i];

   prm->value = Values[i];
   prm->isnull = (Nulls && Nulls[i] == 'n');
   prm->pflags = PARAM_FLAG_CONST;
   prm->ptype = argtypes[i];
  }
 }
 else
  paramLI = ((void*)0);
 return paramLI;
}
