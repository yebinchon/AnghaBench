
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rbt_freefunc ;
typedef int rbt_comparator ;
typedef int rbt_combiner ;
typedef int rbt_allocfunc ;
struct TYPE_3__ {int node_size; void* arg; int freefunc; int allocfunc; int combiner; int comparator; int root; } ;
typedef int Size ;
typedef TYPE_1__ RBTree ;
typedef int RBTNode ;


 int Assert (int) ;
 int RBTNIL ;
 scalar_t__ palloc (int) ;

RBTree *
rbt_create(Size node_size,
     rbt_comparator comparator,
     rbt_combiner combiner,
     rbt_allocfunc allocfunc,
     rbt_freefunc freefunc,
     void *arg)
{
 RBTree *tree = (RBTree *) palloc(sizeof(RBTree));

 Assert(node_size > sizeof(RBTNode));

 tree->root = RBTNIL;
 tree->node_size = node_size;
 tree->comparator = comparator;
 tree->combiner = combiner;
 tree->allocfunc = allocfunc;
 tree->freefunc = freefunc;

 tree->arg = arg;

 return tree;
}
