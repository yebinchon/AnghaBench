
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rd_indam; int rd_indexcxt; int rd_amhandler; } ;
typedef TYPE_1__* Relation ;
typedef int IndexAmRoutine ;


 int * GetIndexAmRoutine (int ) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int memcpy (int *,int *,int) ;
 int pfree (int *) ;

__attribute__((used)) static void
InitIndexAmRoutine(Relation relation)
{
 IndexAmRoutine *cached,
      *tmp;





 tmp = GetIndexAmRoutine(relation->rd_amhandler);


 cached = (IndexAmRoutine *) MemoryContextAlloc(relation->rd_indexcxt,
               sizeof(IndexAmRoutine));
 memcpy(cached, tmp, sizeof(IndexAmRoutine));
 relation->rd_indam = cached;

 pfree(tmp);
}
