
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sane; int value; } ;


 int CRYPTO_THREAD_cleanup_local (int *) ;
 TYPE_1__ destructor_key ;
 int init_thread_deregister (int *,int) ;

void ossl_cleanup_thread(void)
{
    init_thread_deregister(((void*)0), 1);
    CRYPTO_THREAD_cleanup_local(&destructor_key.value);
    destructor_key.sane = -1;
}
