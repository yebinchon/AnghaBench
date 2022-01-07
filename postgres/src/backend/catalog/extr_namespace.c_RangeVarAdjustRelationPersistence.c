
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relpersistence; } ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;


 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;


 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int isAnyTempNamespace (int ) ;
 int isTempOrTempToastNamespace (int ) ;

void
RangeVarAdjustRelationPersistence(RangeVar *newRelation, Oid nspid)
{
 switch (newRelation->relpersistence)
 {
  case 128:
   if (!isTempOrTempToastNamespace(nspid))
   {
    if (isAnyTempNamespace(nspid))
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
        errmsg("cannot create relations in temporary schemas of other sessions")));
    else
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
        errmsg("cannot create temporary relation in non-temporary schema")));
   }
   break;
  case 129:
   if (isTempOrTempToastNamespace(nspid))
    newRelation->relpersistence = 128;
   else if (isAnyTempNamespace(nspid))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
       errmsg("cannot create relations in temporary schemas of other sessions")));
   break;
  default:
   if (isAnyTempNamespace(nspid))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
       errmsg("only temporary relations may be created in temporary schemas")));
 }
}
