
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ init; scalar_t__ flags; int * ptr; scalar_t__ shutdown; } ;
typedef int BIO_ACCEPT ;
typedef TYPE_1__ BIO ;


 int BIO_ACCEPT_free (int *) ;
 int acpt_close_socket (TYPE_1__*) ;

__attribute__((used)) static int acpt_free(BIO *a)
{
    BIO_ACCEPT *data;

    if (a == ((void*)0))
        return 0;
    data = (BIO_ACCEPT *)a->ptr;

    if (a->shutdown) {
        acpt_close_socket(a);
        BIO_ACCEPT_free(data);
        a->ptr = ((void*)0);
        a->flags = 0;
        a->init = 0;
    }
    return 1;
}
