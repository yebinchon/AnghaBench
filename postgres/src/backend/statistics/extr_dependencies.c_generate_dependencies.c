
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int k; } ;
typedef TYPE_1__* DependencyGenerator ;
typedef int AttrNumber ;


 int generate_dependencies_recurse (TYPE_1__*,int ,int ,int *) ;
 scalar_t__ palloc0 (int) ;
 int pfree (int *) ;

__attribute__((used)) static void
generate_dependencies(DependencyGenerator state)
{
 AttrNumber *current = (AttrNumber *) palloc0(sizeof(AttrNumber) * state->k);

 generate_dependencies_recurse(state, 0, 0, current);

 pfree(current);
}
