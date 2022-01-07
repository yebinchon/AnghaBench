
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_set_rand_method (int *) ;
 int fuzz_rand_method ;

void FuzzerSetRand(void)
{
    RAND_set_rand_method(&fuzz_rand_method);
}
