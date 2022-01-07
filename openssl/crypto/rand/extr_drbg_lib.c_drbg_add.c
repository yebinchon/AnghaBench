
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dummy ;
typedef int RAND_DRBG ;


 int RAND_DRBG_generate (int *,unsigned char*,int,int ,void const*,size_t) ;
 int * RAND_DRBG_get0_master () ;
 int rand_drbg_lock (int *) ;
 int rand_drbg_restart (int *,void const*,size_t,size_t) ;
 size_t rand_drbg_seedlen (int *) ;
 int rand_drbg_unlock (int *) ;

__attribute__((used)) static int drbg_add(const void *buf, int num, double randomness)
{
    int ret = 0;
    RAND_DRBG *drbg = RAND_DRBG_get0_master();
    size_t buflen;
    size_t seedlen;

    if (drbg == ((void*)0))
        return 0;

    if (num < 0 || randomness < 0.0)
        return 0;

    rand_drbg_lock(drbg);
    seedlen = rand_drbg_seedlen(drbg);

    buflen = (size_t)num;
    if (buflen < seedlen || randomness < (double) seedlen) {
        randomness = 0.0;

    }

    if (randomness > (double)seedlen) {
        randomness = (double)seedlen;
    }

    ret = rand_drbg_restart(drbg, buf, buflen, (size_t)(8 * randomness));
    rand_drbg_unlock(drbg);

    return ret;
}
