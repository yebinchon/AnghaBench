
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int seed ;
struct TYPE_5__ {int random_state; } ;
struct TYPE_4__ {scalar_t__ join_search_private; } ;
typedef TYPE_1__ PlannerInfo ;
typedef TYPE_2__ GeqoPrivateData ;


 int Min (int,int) ;
 int memcpy (int ,double*,int ) ;
 int memset (int ,int ,int) ;

void
geqo_set_seed(PlannerInfo *root, double seed)
{
 GeqoPrivateData *private = (GeqoPrivateData *) root->join_search_private;





 memset(private->random_state, 0, sizeof(private->random_state));
 memcpy(private->random_state,
     &seed,
     Min(sizeof(private->random_state), sizeof(seed)));
}
