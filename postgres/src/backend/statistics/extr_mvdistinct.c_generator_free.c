
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* combinations; } ;
typedef TYPE_1__ CombinationGenerator ;


 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
generator_free(CombinationGenerator *state)
{
 pfree(state->combinations);
 pfree(state);
}
