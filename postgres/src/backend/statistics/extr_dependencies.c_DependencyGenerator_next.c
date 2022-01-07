
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current; scalar_t__ ndependencies; size_t k; int * dependencies; } ;
typedef TYPE_1__* DependencyGenerator ;
typedef int AttrNumber ;



__attribute__((used)) static AttrNumber *
DependencyGenerator_next(DependencyGenerator state)
{
 if (state->current == state->ndependencies)
  return ((void*)0);

 return &state->dependencies[state->k * state->current++];
}
