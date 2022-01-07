
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int references; } ;
typedef TYPE_1__ NISTP256_PRE_COMP ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,int ) ;
 int x ;

void EC_nistp256_pre_comp_free(NISTP256_PRE_COMP *pre)
{
    int i;

    if (pre == ((void*)0))
        return;

    CRYPTO_DOWN_REF(&pre->references, &i, pre->lock);
    REF_PRINT_COUNT("EC_nistp256", x);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);

    CRYPTO_THREAD_lock_free(pre->lock);
    OPENSSL_free(pre);
}
