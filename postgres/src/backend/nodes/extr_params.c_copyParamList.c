
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_10__ {int value; int ptype; scalar_t__ isnull; } ;
struct TYPE_9__ {scalar_t__ numParams; TYPE_2__* params; TYPE_2__* (* paramFetch ) (TYPE_1__*,int,int,TYPE_2__*) ;} ;
typedef TYPE_1__* ParamListInfo ;
typedef TYPE_2__ ParamExternData ;


 int OidIsValid (int ) ;
 int datumCopy (int ,int,int ) ;
 int get_typlenbyval (int ,int *,int*) ;
 TYPE_1__* makeParamList (scalar_t__) ;
 TYPE_2__* stub1 (TYPE_1__*,int,int,TYPE_2__*) ;

ParamListInfo
copyParamList(ParamListInfo from)
{
 ParamListInfo retval;

 if (from == ((void*)0) || from->numParams <= 0)
  return ((void*)0);

 retval = makeParamList(from->numParams);

 for (int i = 0; i < from->numParams; i++)
 {
  ParamExternData *oprm;
  ParamExternData *nprm = &retval->params[i];
  ParamExternData prmdata;
  int16 typLen;
  bool typByVal;


  if (from->paramFetch != ((void*)0))
   oprm = from->paramFetch(from, i + 1, 0, &prmdata);
  else
   oprm = &from->params[i];


  *nprm = *oprm;


  if (nprm->isnull || !OidIsValid(nprm->ptype))
   continue;
  get_typlenbyval(nprm->ptype, &typLen, &typByVal);
  nprm->value = datumCopy(nprm->value, typByVal, typLen);
 }

 return retval;
}
