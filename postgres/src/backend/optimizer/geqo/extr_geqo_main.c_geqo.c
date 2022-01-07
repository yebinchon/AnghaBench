
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_5__ ;
typedef struct TYPE_47__ TYPE_4__ ;
typedef struct TYPE_46__ TYPE_3__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_1__ ;


struct TYPE_48__ {int string; int worth; } ;
struct TYPE_47__ {int * initial_rels; } ;
struct TYPE_46__ {int * join_search_private; } ;
struct TYPE_45__ {int string_length; TYPE_1__* data; } ;
struct TYPE_44__ {scalar_t__ string; int worth; } ;
typedef int RelOptInfo ;
typedef TYPE_2__ Pool ;
typedef TYPE_3__ PlannerInfo ;
typedef int List ;
typedef TYPE_4__ GeqoPrivateData ;
typedef int Gene ;
typedef int Edge ;
typedef int City ;
typedef TYPE_5__ Chromosome ;


 int DEBUG1 ;
 int DEBUG2 ;
 int ERROR ;
 int Geqo_seed ;
 int Geqo_selection_bias ;
 int LOG ;
 TYPE_5__* alloc_chromo (TYPE_3__*,int ) ;
 int * alloc_city_table (TYPE_3__*,int ) ;
 int * alloc_edge_table (TYPE_3__*,int ) ;
 TYPE_2__* alloc_pool (TYPE_3__*,int,int) ;
 int best_plan ;
 int cx (TYPE_3__*,int ,int ,int ,int ,int *) ;
 int elog (int ,char*,...) ;
 int free_chromo (TYPE_3__*,TYPE_5__*) ;
 int free_city_table (TYPE_3__*,int *) ;
 int free_edge_table (TYPE_3__*,int *) ;
 int free_pool (TYPE_3__*,TYPE_2__*) ;
 int geqo_eval (TYPE_3__*,int ,int ) ;
 int geqo_mutation (TYPE_3__*,int ,int ) ;
 int geqo_selection (TYPE_3__*,TYPE_5__*,TYPE_5__*,TYPE_2__*,int ) ;
 int geqo_set_seed (TYPE_3__*,int ) ;
 int gimme_edge_table (TYPE_3__*,int ,int ,int ,int *) ;
 int gimme_number_generations (int) ;
 int gimme_pool_size (int) ;
 scalar_t__ gimme_tour (TYPE_3__*,int *,int ,int ) ;
 int * gimme_tree (TYPE_3__*,int *,int ) ;
 int ox1 (TYPE_3__*,int ,int ,int ,int ,int *) ;
 int ox2 (TYPE_3__*,int ,int ,int ,int ,int *) ;
 int pmx (TYPE_3__*,int ,int ,int ,int ) ;
 int print_gen (int ,TYPE_2__*,int) ;
 int print_plan (int ,TYPE_3__*) ;
 int print_pool (int ,TYPE_2__*,int ,int) ;
 int px (TYPE_3__*,int ,int ,int ,int ,int *) ;
 int random_init_pool (TYPE_3__*,TYPE_2__*) ;
 int sort_pool (TYPE_3__*,TYPE_2__*) ;
 int spread_chromo (TYPE_3__*,TYPE_5__*,TYPE_2__*) ;
 int stdout ;

RelOptInfo *
geqo(PlannerInfo *root, int number_of_rels, List *initial_rels)
{
 GeqoPrivateData private;
 int generation;
 Chromosome *momma;
 Chromosome *daddy;
 Chromosome *kid;
 Pool *pool;
 int pool_size,
    number_generations;




 Gene *best_tour;
 RelOptInfo *best_rel;
 root->join_search_private = (void *) &private;
 private.initial_rels = initial_rels;


 geqo_set_seed(root, Geqo_seed);


 pool_size = gimme_pool_size(number_of_rels);
 number_generations = gimme_number_generations(pool_size);





 pool = alloc_pool(root, pool_size, number_of_rels);


 random_init_pool(root, pool);


 sort_pool(root, pool);
 momma = alloc_chromo(root, pool->string_length);
 daddy = alloc_chromo(root, pool->string_length);
 for (generation = 0; generation < number_generations; generation++)
 {

  geqo_selection(root, momma, daddy, pool, Geqo_selection_bias);
  kid->worth = geqo_eval(root, kid->string, pool->string_length);


  spread_chromo(root, kid, pool);







 }
 best_tour = (Gene *) pool->data[0].string;

 best_rel = gimme_tree(root, best_tour, pool->string_length);

 if (best_rel == ((void*)0))
  elog(ERROR, "geqo failed to make a valid plan");







 free_chromo(root, momma);
 free_chromo(root, daddy);
 free_pool(root, pool);


 root->join_search_private = ((void*)0);

 return best_rel;
}
