
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueryEnvironment ;


 scalar_t__ palloc0 (int) ;

QueryEnvironment *
create_queryEnv()
{
 return (QueryEnvironment *) palloc0(sizeof(QueryEnvironment));
}
