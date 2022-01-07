
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * callback_ex; int * callback; TYPE_1__* method; } ;
struct TYPE_6__ {long (* callback_ctrl ) (TYPE_2__*,int,int *) ;} ;
typedef int BIO_info_cb ;
typedef TYPE_2__ BIO ;


 int BIO_CB_CTRL ;
 int BIO_CB_RETURN ;
 int BIO_CTRL_SET_CALLBACK ;
 int BIO_F_BIO_CALLBACK_CTRL ;
 int BIO_R_UNSUPPORTED_METHOD ;
 int BIOerr (int ,int ) ;
 long bio_call_callback (TYPE_2__*,int,void*,int ,int,int ,long,int *) ;
 long stub1 (TYPE_2__*,int,int *) ;

long BIO_callback_ctrl(BIO *b, int cmd, BIO_info_cb *fp)
{
    long ret;

    if (b == ((void*)0))
        return 0;

    if ((b->method == ((void*)0)) || (b->method->callback_ctrl == ((void*)0))
            || (cmd != BIO_CTRL_SET_CALLBACK)) {
        BIOerr(BIO_F_BIO_CALLBACK_CTRL, BIO_R_UNSUPPORTED_METHOD);
        return -2;
    }

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0)) {
        ret = bio_call_callback(b, BIO_CB_CTRL, (void *)&fp, 0, cmd, 0, 1L,
                                ((void*)0));
        if (ret <= 0)
            return ret;
    }

    ret = b->method->callback_ctrl(b, cmd, fp);

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0))
        ret = bio_call_callback(b, BIO_CB_CTRL | BIO_CB_RETURN, (void *)&fp, 0,
                                cmd, 0, ret, ((void*)0));

    return ret;
}
