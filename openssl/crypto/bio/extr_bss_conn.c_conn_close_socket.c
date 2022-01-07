
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num; scalar_t__ ptr; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ BIO_CONNECT ;
typedef TYPE_2__ BIO ;


 scalar_t__ BIO_CONN_S_OK ;
 int BIO_closesocket (int) ;
 scalar_t__ INVALID_SOCKET ;
 int shutdown (int,int) ;

__attribute__((used)) static void conn_close_socket(BIO *bio)
{
    BIO_CONNECT *c;

    c = (BIO_CONNECT *)bio->ptr;
    if (bio->num != (int)INVALID_SOCKET) {

        if (c->state == BIO_CONN_S_OK)
            shutdown(bio->num, 2);
        BIO_closesocket(bio->num);
        bio->num = (int)INVALID_SOCKET;
    }
}
