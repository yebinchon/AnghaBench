
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int logs; } ;
typedef TYPE_1__ CTLOG_STORE ;


 int CTLOG_free ;
 int OPENSSL_free (TYPE_1__*) ;
 int sk_CTLOG_pop_free (int ,int ) ;

void CTLOG_STORE_free(CTLOG_STORE *store)
{
    if (store != ((void*)0)) {
        sk_CTLOG_pop_free(store->logs, CTLOG_free);
        OPENSSL_free(store);
    }
}
