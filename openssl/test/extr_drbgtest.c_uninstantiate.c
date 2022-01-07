
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int ERR_clear_error () ;
 int RAND_DRBG_uninstantiate (int *) ;

__attribute__((used)) static int uninstantiate(RAND_DRBG *drbg)
{
    int ret = drbg == ((void*)0) ? 1 : RAND_DRBG_uninstantiate(drbg);

    ERR_clear_error();
    return ret;
}
