
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ flags; scalar_t__ init; int * ptr; } ;
struct TYPE_4__ {int * obuf; int * ibuf; } ;
typedef TYPE_1__ BIO_F_BUFFER_CTX ;
typedef TYPE_2__ BIO ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static int buffer_free(BIO *a)
{
    BIO_F_BUFFER_CTX *b;

    if (a == ((void*)0))
        return 0;
    b = (BIO_F_BUFFER_CTX *)a->ptr;
    OPENSSL_free(b->ibuf);
    OPENSSL_free(b->obuf);
    OPENSSL_free(a->ptr);
    a->ptr = ((void*)0);
    a->init = 0;
    a->flags = 0;
    return 1;
}
