
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CachedPlanSource ;


 int DropCachedPlan (int *) ;
 int * unnamed_stmt_psrc ;

__attribute__((used)) static void
drop_unnamed_stmt(void)
{

 if (unnamed_stmt_psrc)
 {
  CachedPlanSource *psrc = unnamed_stmt_psrc;

  unnamed_stmt_psrc = ((void*)0);
  DropCachedPlan(psrc);
 }
}
