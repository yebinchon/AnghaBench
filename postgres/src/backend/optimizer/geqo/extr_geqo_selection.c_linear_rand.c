
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerInfo ;


 double geqo_rand (int *) ;
 double sqrt (double) ;

__attribute__((used)) static int
linear_rand(PlannerInfo *root, int pool_size, double bias)
{
 double index;
 double max = (double) pool_size;
 do
 {
  double sqrtval;

  sqrtval = (bias * bias) - 4.0 * (bias - 1.0) * geqo_rand(root);
  if (sqrtval > 0.0)
   sqrtval = sqrt(sqrtval);
  index = max * (bias - sqrtval) / 2.0 / (bias - 1.0);
 } while (index < 0.0 || index >= max);

 return (int) index;
}
