
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int retry_reason; struct TYPE_5__* next_bio; } ;
typedef TYPE_1__ BIO ;


 int BIO_should_retry (TYPE_1__*) ;

BIO *BIO_get_retry_BIO(BIO *bio, int *reason)
{
    BIO *b, *last;

    b = last = bio;
    for (;;) {
        if (!BIO_should_retry(b))
            break;
        last = b;
        b = b->next_bio;
        if (b == ((void*)0))
            break;
    }
    if (reason != ((void*)0))
        *reason = last->retry_reason;
    return last;
}
