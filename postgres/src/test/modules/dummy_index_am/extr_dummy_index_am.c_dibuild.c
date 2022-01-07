
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ index_tuples; scalar_t__ heap_tuples; } ;
typedef int Relation ;
typedef int IndexInfo ;
typedef TYPE_1__ IndexBuildResult ;


 scalar_t__ palloc (int) ;

__attribute__((used)) static IndexBuildResult *
dibuild(Relation heap, Relation index, IndexInfo *indexInfo)
{
 IndexBuildResult *result;

 result = (IndexBuildResult *) palloc(sizeof(IndexBuildResult));


 result->heap_tuples = 0;

 result->index_tuples = 0;

 return result;
}
