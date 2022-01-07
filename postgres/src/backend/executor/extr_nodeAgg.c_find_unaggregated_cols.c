
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ qual; scalar_t__ targetlist; } ;
struct TYPE_11__ {TYPE_3__ plan; } ;
struct TYPE_7__ {scalar_t__ plan; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_10__ {TYPE_2__ ss; } ;
typedef int Node ;
typedef int Bitmapset ;
typedef TYPE_4__ AggState ;
typedef TYPE_5__ Agg ;


 int find_unaggregated_cols_walker (int *,int **) ;

__attribute__((used)) static Bitmapset *
find_unaggregated_cols(AggState *aggstate)
{
 Agg *node = (Agg *) aggstate->ss.ps.plan;
 Bitmapset *colnos;

 colnos = ((void*)0);
 (void) find_unaggregated_cols_walker((Node *) node->plan.targetlist,
           &colnos);
 (void) find_unaggregated_cols_walker((Node *) node->plan.qual,
           &colnos);
 return colnos;
}
