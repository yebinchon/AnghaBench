
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16 ;
typedef int int16 ;
struct TYPE_8__ {int ptype; int pflags; int isnull; int value; } ;
struct TYPE_7__ {int numParams; TYPE_2__* params; TYPE_2__* (* paramFetch ) (TYPE_1__*,int,int,TYPE_2__*) ;} ;
typedef TYPE_1__* ParamListInfo ;
typedef TYPE_2__ ParamExternData ;
typedef int Oid ;
typedef int Datum ;


 scalar_t__ OidIsValid (int) ;
 int datumSerialize (int ,int ,int,int,char**) ;
 int get_typlenbyval (int,int*,int*) ;
 int memcpy (char*,int*,int) ;
 TYPE_2__* stub1 (TYPE_1__*,int,int,TYPE_2__*) ;

void
SerializeParamList(ParamListInfo paramLI, char **start_address)
{
 int nparams;
 int i;


 if (paramLI == ((void*)0) || paramLI->numParams <= 0)
  nparams = 0;
 else
  nparams = paramLI->numParams;
 memcpy(*start_address, &nparams, sizeof(int));
 *start_address += sizeof(int);


 for (i = 0; i < nparams; i++)
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


  memcpy(*start_address, &typeOid, sizeof(Oid));
  *start_address += sizeof(Oid);


  memcpy(*start_address, &prm->pflags, sizeof(uint16));
  *start_address += sizeof(uint16);


  if (OidIsValid(typeOid))
   get_typlenbyval(typeOid, &typLen, &typByVal);
  else
  {

   typLen = sizeof(Datum);
   typByVal = 1;
  }
  datumSerialize(prm->value, prm->isnull, typByVal, typLen,
        start_address);
 }
}
