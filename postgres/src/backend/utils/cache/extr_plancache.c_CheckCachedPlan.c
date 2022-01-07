
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ magic; int is_valid; scalar_t__ planRoleId; scalar_t__ refcount; int stmt_list; int saved_xmin; scalar_t__ dependsOnRole; int is_oneshot; } ;
struct TYPE_5__ {int is_valid; TYPE_2__* gplan; } ;
typedef TYPE_1__ CachedPlanSource ;
typedef TYPE_2__ CachedPlan ;


 int AcquireExecutorLocks (int ,int) ;
 int Assert (int) ;
 scalar_t__ CACHEDPLAN_MAGIC ;
 scalar_t__ GetUserId () ;
 int ReleaseGenericPlan (TYPE_1__*) ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int TransactionXmin ;

__attribute__((used)) static bool
CheckCachedPlan(CachedPlanSource *plansource)
{
 CachedPlan *plan = plansource->gplan;


 Assert(plansource->is_valid);


 if (!plan)
  return 0;

 Assert(plan->magic == CACHEDPLAN_MAGIC);

 Assert(!plan->is_oneshot);




 if (plan->is_valid && plan->dependsOnRole &&
  plan->planRoleId != GetUserId())
  plan->is_valid = 0;





 if (plan->is_valid)
 {




  Assert(plan->refcount > 0);

  AcquireExecutorLocks(plan->stmt_list, 1);





  if (plan->is_valid &&
   TransactionIdIsValid(plan->saved_xmin) &&
   !TransactionIdEquals(plan->saved_xmin, TransactionXmin))
   plan->is_valid = 0;





  if (plan->is_valid)
  {

   return 1;
  }


  AcquireExecutorLocks(plan->stmt_list, 0);
 }




 ReleaseGenericPlan(plansource);

 return 0;
}
