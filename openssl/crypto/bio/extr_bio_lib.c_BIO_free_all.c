
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int references; struct TYPE_4__* next_bio; } ;
typedef TYPE_1__ BIO ;


 int BIO_free (TYPE_1__*) ;

void BIO_free_all(BIO *bio)
{
    BIO *b;
    int ref;

    while (bio != ((void*)0)) {
        b = bio;
        ref = b->references;
        bio = bio->next_bio;
        BIO_free(b);

        if (ref > 1)
            break;
    }
}
