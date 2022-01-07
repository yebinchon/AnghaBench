
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16 ;
typedef int int16 ;
struct TYPE_8__ {int isnull; int value; int ptype; } ;
struct TYPE_7__ {int numParams; TYPE_2__* params; TYPE_2__* (* paramFetch ) (TYPE_1__*,int,int,TYPE_2__*) ;} ;
typedef int Size ;
typedef TYPE_1__* ParamListInfo ;
typedef TYPE_2__ ParamExternData ;
typedef int Oid ;
typedef int Datum ;


 scalar_t__ OidIsValid (int ) ;
 int add_size (int,int) ;
 int datumEstimateSpace (int ,int ,int,int) ;
 int get_typlenbyval (int ,int*,int*) ;
 TYPE_2__* stub1 (TYPE_1__*,int,int,TYPE_2__*) ;

Size
EstimateParamListSpace(ParamListInfo paramLI)
{
 int i;
 Size sz = sizeof(int);

 if (paramLI == ((void*)0) || paramLI->numParams <= 0)
  return sz;

 for (i = 0; i < paramLI->numParams; i++)
 {
  ParamExternData *prm;
  ParamExternData prmdata;
  Oid typeOid;
  int16 typLen;
  bool typByVal;


  if (paramLI->paramFetch != ((void*)0))
   prm = paramLI->paramFetch(paramLI, i + 1, 0, &prmdata);
  else
   prm = &paramLI->params[i];

  typeOid = prm->ptype;

  sz = add_size(sz, sizeof(Oid));
  sz = add_size(sz, sizeof(uint16));


  if (OidIsValid(typeOid))
   get_typlenbyval(typeOid, &typLen, &typByVal);
  else
  {

   typLen = sizeof(Datum);
   typByVal = 1;
  }
  sz = add_size(sz,
       datumEstimateSpace(prm->value, prm->isnull, typByVal, typLen));
 }

 return sz;
}
