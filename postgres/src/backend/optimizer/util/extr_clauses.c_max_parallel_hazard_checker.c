
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int max_parallel_hazard_context ;
typedef int Oid ;


 int func_parallel (int ) ;
 int max_parallel_hazard_test (int ,int *) ;

__attribute__((used)) static bool
max_parallel_hazard_checker(Oid func_id, void *context)
{
 return max_parallel_hazard_test(func_parallel(func_id),
         (max_parallel_hazard_context *) context);
}
