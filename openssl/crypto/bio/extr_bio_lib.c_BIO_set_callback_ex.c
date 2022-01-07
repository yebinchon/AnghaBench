
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int callback_ex; } ;
typedef int BIO_callback_fn_ex ;
typedef TYPE_1__ BIO ;



void BIO_set_callback_ex(BIO *b, BIO_callback_fn_ex cb)
{
    b->callback_ex = cb;
}
