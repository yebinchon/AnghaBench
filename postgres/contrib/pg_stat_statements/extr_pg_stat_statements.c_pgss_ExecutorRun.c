
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int ScanDirection ;
typedef int QueryDesc ;


 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int nested_level ;
 int prev_ExecutorRun (int *,int ,int ,int) ;
 int standard_ExecutorRun (int *,int ,int ,int) ;

__attribute__((used)) static void
pgss_ExecutorRun(QueryDesc *queryDesc, ScanDirection direction, uint64 count,
     bool execute_once)
{
 nested_level++;
 PG_TRY();
 {
  if (prev_ExecutorRun)
   prev_ExecutorRun(queryDesc, direction, count, execute_once);
  else
   standard_ExecutorRun(queryDesc, direction, count, execute_once);
 }
 PG_FINALLY();
 {
  nested_level--;
 }
 PG_END_TRY();
}
