
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int references; } ;
typedef TYPE_1__ SSL_SESSION ;


 scalar_t__ CRYPTO_UP_REF (int *,int*,int ) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_1__*) ;

int SSL_SESSION_up_ref(SSL_SESSION *ss)
{
    int i;

    if (CRYPTO_UP_REF(&ss->references, &i, ss->lock) <= 0)
        return 0;

    REF_PRINT_COUNT("SSL_SESSION", ss);
    REF_ASSERT_ISNT(i < 2);
    return ((i > 1) ? 1 : 0);
}
