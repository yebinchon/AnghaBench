
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;


 int CRYPTO_THREAD_init_local (int *,int ) ;
 TYPE_1__ destructor_key ;
 int init_thread_destructor ;

int ossl_init_thread(void)
{
    if (!CRYPTO_THREAD_init_local(&destructor_key.value,
                                  init_thread_destructor))
        return 0;

    return 1;
}
