
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const_DES_cblock ;
typedef int DES_key_schedule ;


 int DES_check_key_parity (int *) ;
 scalar_t__ DES_is_weak_key (int *) ;
 int DES_set_key_unchecked (int *,int *) ;

int DES_set_key_checked(const_DES_cblock *key, DES_key_schedule *schedule)
{
    if (!DES_check_key_parity(key))
        return -1;
    if (DES_is_weak_key(key))
        return -2;
    DES_set_key_unchecked(key, schedule);
    return 0;
}
