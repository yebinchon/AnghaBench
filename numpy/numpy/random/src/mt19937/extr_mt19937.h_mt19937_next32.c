
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mt19937_state ;


 int mt19937_next (int *) ;

__attribute__((used)) static inline uint32_t mt19937_next32(mt19937_state *state) {
  return mt19937_next(state);
}
