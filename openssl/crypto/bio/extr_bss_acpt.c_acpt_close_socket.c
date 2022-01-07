
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num; scalar_t__ ptr; } ;
struct TYPE_4__ {int accept_sock; } ;
typedef TYPE_1__ BIO_ACCEPT ;
typedef TYPE_2__ BIO ;


 scalar_t__ INVALID_SOCKET ;
 int closesocket (int) ;
 int shutdown (int,int) ;

__attribute__((used)) static void acpt_close_socket(BIO *bio)
{
    BIO_ACCEPT *c;

    c = (BIO_ACCEPT *)bio->ptr;
    if (c->accept_sock != (int)INVALID_SOCKET) {
        shutdown(c->accept_sock, 2);
        closesocket(c->accept_sock);
        c->accept_sock = (int)INVALID_SOCKET;
        bio->num = (int)INVALID_SOCKET;
    }
}
