
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int num; char* ptr; int shutdown; scalar_t__ flags; scalar_t__ init; } ;
struct TYPE_5__ {int state; } ;
typedef TYPE_1__ BIO_ACCEPT ;
typedef TYPE_2__ BIO ;


 int ACPT_S_BEFORE ;
 TYPE_1__* BIO_ACCEPT_new () ;
 scalar_t__ INVALID_SOCKET ;

__attribute__((used)) static int acpt_new(BIO *bi)
{
    BIO_ACCEPT *ba;

    bi->init = 0;
    bi->num = (int)INVALID_SOCKET;
    bi->flags = 0;
    if ((ba = BIO_ACCEPT_new()) == ((void*)0))
        return 0;
    bi->ptr = (char *)ba;
    ba->state = ACPT_S_BEFORE;
    bi->shutdown = 1;
    return 1;
}
