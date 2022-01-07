
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double parallel_workers; } ;
typedef TYPE_1__ Path ;


 scalar_t__ parallel_leader_participation ;

__attribute__((used)) static double
get_parallel_divisor(Path *path)
{
 double parallel_divisor = path->parallel_workers;
 if (parallel_leader_participation)
 {
  double leader_contribution;

  leader_contribution = 1.0 - (0.3 * path->parallel_workers);
  if (leader_contribution > 0)
   parallel_divisor += leader_contribution;
 }

 return parallel_divisor;
}
