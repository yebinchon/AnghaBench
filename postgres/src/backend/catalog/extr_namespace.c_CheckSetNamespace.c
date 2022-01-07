
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ PG_TOAST_NAMESPACE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ isAnyTempNamespace (scalar_t__) ;

void
CheckSetNamespace(Oid oldNspOid, Oid nspOid)
{

 if (isAnyTempNamespace(nspOid) || isAnyTempNamespace(oldNspOid))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot move objects into or out of temporary schemas")));


 if (nspOid == PG_TOAST_NAMESPACE || oldNspOid == PG_TOAST_NAMESPACE)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot move objects into or out of TOAST schema")));
}
