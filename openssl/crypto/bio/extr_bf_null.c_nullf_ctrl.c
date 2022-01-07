
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * next_bio; } ;
typedef TYPE_1__ BIO ;




 int BIO_clear_retry_flags (TYPE_1__*) ;
 int BIO_copy_next_retry (TYPE_1__*) ;
 long BIO_ctrl (int *,int,long,void*) ;

__attribute__((used)) static long nullf_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    long ret;

    if (b->next_bio == ((void*)0))
        return 0;
    switch (cmd) {
    case 128:
        BIO_clear_retry_flags(b);
        ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
        BIO_copy_next_retry(b);
        break;
    case 129:
        ret = 0L;
        break;
    default:
        ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
    }
    return ret;
}
