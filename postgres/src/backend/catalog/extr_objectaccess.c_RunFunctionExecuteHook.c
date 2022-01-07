
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Assert (int ) ;
 int OAT_FUNCTION_EXECUTE ;
 int ProcedureRelationId ;
 int object_access_hook (int ,int ,int ,int ,int *) ;
 int stub1 (int ,int ,int ,int ,int *) ;

void
RunFunctionExecuteHook(Oid objectId)
{

 Assert(object_access_hook != ((void*)0));

 (*object_access_hook) (OAT_FUNCTION_EXECUTE,
         ProcedureRelationId, objectId, 0,
         ((void*)0));
}
