
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_cblock ;


 scalar_t__ DES_is_weak_key (int *) ;
 int DES_set_odd_parity (int *) ;
 int RAND_priv_bytes (unsigned char*,int) ;

int DES_random_key(DES_cblock *ret)
{
    do {
        if (RAND_priv_bytes((unsigned char *)ret, sizeof(DES_cblock)) != 1)
            return 0;
    } while (DES_is_weak_key(ret));
    DES_set_odd_parity(ret);
    return 1;
}
