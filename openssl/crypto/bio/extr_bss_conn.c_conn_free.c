
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ init; scalar_t__ flags; int * ptr; scalar_t__ shutdown; } ;
typedef int BIO_CONNECT ;
typedef TYPE_1__ BIO ;


 int BIO_CONNECT_free (int *) ;
 int conn_close_socket (TYPE_1__*) ;

__attribute__((used)) static int conn_free(BIO *a)
{
    BIO_CONNECT *data;

    if (a == ((void*)0))
        return 0;
    data = (BIO_CONNECT *)a->ptr;

    if (a->shutdown) {
        conn_close_socket(a);
        BIO_CONNECT_free(data);
        a->ptr = ((void*)0);
        a->flags = 0;
        a->init = 0;
    }
    return 1;
}
