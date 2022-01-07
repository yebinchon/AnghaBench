
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int state; } ;
typedef TYPE_1__ splitmix64_state ;


 int splitmix64_next (int *) ;

__attribute__((used)) static inline uint64_t splitmix64_next64(splitmix64_state *state) {
  return splitmix64_next(&state->state);
}
