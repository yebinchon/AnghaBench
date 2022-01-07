
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_hazard; char max_interesting; } ;
typedef TYPE_1__ max_parallel_hazard_context ;


 int Assert (int) ;
 int ERROR ;



 int elog (int ,char*,char) ;

__attribute__((used)) static bool
max_parallel_hazard_test(char proparallel, max_parallel_hazard_context *context)
{
 switch (proparallel)
 {
  case 129:

   break;
  case 130:

   Assert(context->max_hazard != 128);
   context->max_hazard = proparallel;

   if (context->max_interesting == proparallel)
    return 1;
   break;
  case 128:
   context->max_hazard = proparallel;

   return 1;
  default:
   elog(ERROR, "unrecognized proparallel value \"%c\"", proparallel);
   break;
 }
 return 0;
}
