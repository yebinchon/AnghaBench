
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitgen_t ;
typedef int RAND_INT_TYPE ;


 int random_hypergeometric_hrua (int *,int,int,int) ;
 int random_hypergeometric_hyp (int *,int,int,int) ;

__attribute__((used)) static RAND_INT_TYPE random_hypergeometric_original(bitgen_t *bitgen_state,
                                                    RAND_INT_TYPE good,
                                                    RAND_INT_TYPE bad,
                                                    RAND_INT_TYPE sample)
{
  if (sample > 10) {
    return random_hypergeometric_hrua(bitgen_state, good, bad, sample);
  } else if (sample > 0) {
    return random_hypergeometric_hyp(bitgen_state, good, bad, sample);
  } else {
    return 0;
  }
}
