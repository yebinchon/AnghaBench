
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next_bio; } ;
typedef int BIO_info_cb ;
typedef TYPE_1__ BIO ;


 long BIO_callback_ctrl (int *,int,int *) ;

__attribute__((used)) static long nbiof_callback_ctrl(BIO *b, int cmd, BIO_info_cb *fp)
{
    long ret = 1;

    if (b->next_bio == ((void*)0))
        return 0;
    switch (cmd) {
    default:
        ret = BIO_callback_ctrl(b->next_bio, cmd, fp);
        break;
    }
    return ret;
}
