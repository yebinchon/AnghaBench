
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int bitgen_t ;
typedef int binomial_t ;
typedef int RAND_INT_TYPE ;


 void random_multinomial (int *,int ,int *,double*,int ,int *) ;

void legacy_random_multinomial(bitgen_t *bitgen_state, RAND_INT_TYPE n,
                               RAND_INT_TYPE *mnix, double *pix, npy_intp d,
                               binomial_t *binomial) {
  return random_multinomial(bitgen_state, n, mnix, pix, d, binomial);
}
