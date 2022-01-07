
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * seed; } ;
typedef TYPE_1__ rand_state ;


 size_t LASTSEED ;
 int rand_init (TYPE_1__*) ;

__attribute__((used)) static uint32_t
rand_seed(rand_state *t, uint32_t seed)
{
  uint32_t old_seed = t->seed[LASTSEED];
  rand_init(t);
  t->seed[LASTSEED] = seed;
  return old_seed;
}
