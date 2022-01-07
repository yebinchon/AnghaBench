
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* bai_addr; struct TYPE_5__* bai_next; } ;
typedef TYPE_1__ BIO_ADDRINFO ;


 int OPENSSL_free (TYPE_1__*) ;
 scalar_t__ _cond ;
 int freeaddrinfo (TYPE_1__*) ;

void BIO_ADDRINFO_free(BIO_ADDRINFO *bai)
{
    if (bai == ((void*)0))
        return;
    while (bai != ((void*)0)) {
        BIO_ADDRINFO *next = bai->bai_next;
        OPENSSL_free(bai->bai_addr);
        OPENSSL_free(bai);
        bai = next;
    }
}
