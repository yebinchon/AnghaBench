
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dependencies; } ;
typedef TYPE_1__* DependencyGenerator ;


 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
DependencyGenerator_free(DependencyGenerator state)
{
 pfree(state->dependencies);
 pfree(state);

}
