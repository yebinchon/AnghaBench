
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FuncInfo ;


 scalar_t__ findObjectByOid (int ,int ,int ) ;
 int funinfoindex ;
 int numFuncs ;

FuncInfo *
findFuncByOid(Oid oid)
{
 return (FuncInfo *) findObjectByOid(oid, funinfoindex, numFuncs);
}
