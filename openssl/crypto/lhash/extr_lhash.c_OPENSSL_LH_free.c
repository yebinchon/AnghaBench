
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* b; } ;
typedef TYPE_1__ OPENSSL_LHASH ;


 int OPENSSL_LH_flush (TYPE_1__*) ;
 int OPENSSL_free (TYPE_1__*) ;

void OPENSSL_LH_free(OPENSSL_LHASH *lh)
{
    if (lh == ((void*)0))
        return;

    OPENSSL_LH_flush(lh);
    OPENSSL_free(lh->b);
    OPENSSL_free(lh);
}
