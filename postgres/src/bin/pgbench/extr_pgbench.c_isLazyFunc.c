
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PgBenchFunction ;


 scalar_t__ PGBENCH_AND ;
 scalar_t__ PGBENCH_CASE ;
 scalar_t__ PGBENCH_OR ;

__attribute__((used)) static bool
isLazyFunc(PgBenchFunction func)
{
 return func == PGBENCH_AND || func == PGBENCH_OR || func == PGBENCH_CASE;
}
