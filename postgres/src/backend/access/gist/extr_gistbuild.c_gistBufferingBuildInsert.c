
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* gfbb; } ;
struct TYPE_6__ {int rootlevel; } ;
typedef int IndexTuple ;
typedef TYPE_2__ GISTBuildState ;


 int gistProcessEmptyingQueue (TYPE_2__*) ;
 int gistProcessItup (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static void
gistBufferingBuildInsert(GISTBuildState *buildstate, IndexTuple itup)
{

 gistProcessItup(buildstate, itup, 0, buildstate->gfbb->rootlevel);


 gistProcessEmptyingQueue(buildstate);
}
