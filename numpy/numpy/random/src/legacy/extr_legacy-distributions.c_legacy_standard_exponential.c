
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 scalar_t__ legacy_double (int *) ;
 double log (scalar_t__) ;

double legacy_standard_exponential(aug_bitgen_t *aug_state) {

  return -log(1.0 - legacy_double(aug_state));
}
