
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const_DES_cblock ;
typedef int DES_key_schedule ;


 int DES_set_key_checked (int *,int *) ;

int DES_set_key(const_DES_cblock *key, DES_key_schedule *schedule)
{
    return DES_set_key_checked(key, schedule);
}
