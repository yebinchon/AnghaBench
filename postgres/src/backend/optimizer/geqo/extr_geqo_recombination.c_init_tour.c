
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerInfo ;
typedef scalar_t__ Gene ;


 int geqo_randint (int *,int,int ) ;

void
init_tour(PlannerInfo *root, Gene *tour, int num_gene)
{
 int i,
    j;
 if (num_gene > 0)
  tour[0] = (Gene) 1;

 for (i = 1; i < num_gene; i++)
 {
  j = geqo_randint(root, i, 0);

  if (i != j)
   tour[i] = tour[j];
  tour[j] = (Gene) (i + 1);
 }
}
