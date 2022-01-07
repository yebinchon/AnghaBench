
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bf_crypt_restore () ;
 int crypt_busy ;
 int * keys ;
 scalar_t__ saved_crypt_method ;
 int * saved_keys ;
 scalar_t__ use_crypt_method ;

void
crypt_pop_state()
{
    --crypt_busy;
    if (crypt_busy == 1)
    {
 use_crypt_method = saved_crypt_method;
 if (use_crypt_method == 0)
 {
     keys[0] = saved_keys[0];
     keys[1] = saved_keys[1];
     keys[2] = saved_keys[2];
 }
 else
     bf_crypt_restore();
    }
}
