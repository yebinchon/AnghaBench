
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rd_fdwroutine; } ;
typedef TYPE_1__* Relation ;
typedef int FdwRoutine ;


 int CacheMemoryContext ;
 int * GetFdwRoutineByRelId (int ) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int RelationGetRelid (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ palloc (int) ;

FdwRoutine *
GetFdwRoutineForRelation(Relation relation, bool makecopy)
{
 FdwRoutine *fdwroutine;
 FdwRoutine *cfdwroutine;

 if (relation->rd_fdwroutine == ((void*)0))
 {

  fdwroutine = GetFdwRoutineByRelId(RelationGetRelid(relation));


  cfdwroutine = (FdwRoutine *) MemoryContextAlloc(CacheMemoryContext,
              sizeof(FdwRoutine));
  memcpy(cfdwroutine, fdwroutine, sizeof(FdwRoutine));
  relation->rd_fdwroutine = cfdwroutine;


  return fdwroutine;
 }


 if (makecopy)
 {
  fdwroutine = (FdwRoutine *) palloc(sizeof(FdwRoutine));
  memcpy(fdwroutine, relation->rd_fdwroutine, sizeof(FdwRoutine));
  return fdwroutine;
 }


 return relation->rd_fdwroutine;
}
