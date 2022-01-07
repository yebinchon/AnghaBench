
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int bitgen_t ;


 int random_logseries (int *,double) ;

int64_t legacy_random_logseries(bitgen_t *bitgen_state, double p) {
  return (int64_t)random_logseries(bitgen_state, p);
}
