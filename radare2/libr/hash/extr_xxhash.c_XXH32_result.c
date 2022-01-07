
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int XXH32_getIntermediateResult (void*) ;
 int free (void*) ;

ut32 XXH32_result (void *state_in) {
 ut32 h32 = XXH32_getIntermediateResult (state_in);
 free (state_in);
 return h32;
}
