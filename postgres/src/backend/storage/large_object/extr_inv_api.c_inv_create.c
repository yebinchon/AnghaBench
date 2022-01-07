
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CommandCounterIncrement () ;
 int GetUserId () ;
 int InvokeObjectPostCreateHook (int ,int ,int ) ;
 int LargeObjectCreate (int ) ;
 int LargeObjectRelationId ;
 int recordDependencyOnOwner (int ,int ,int ) ;

Oid
inv_create(Oid lobjId)
{
 Oid lobjId_new;




 lobjId_new = LargeObjectCreate(lobjId);
 recordDependencyOnOwner(LargeObjectRelationId,
       lobjId_new, GetUserId());


 InvokeObjectPostCreateHook(LargeObjectRelationId, lobjId_new, 0);




 CommandCounterIncrement();

 return lobjId_new;
}
