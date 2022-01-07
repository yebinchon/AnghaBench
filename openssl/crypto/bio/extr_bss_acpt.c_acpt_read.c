
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * next_bio; scalar_t__ ptr; } ;
typedef int BIO_ACCEPT ;
typedef TYPE_1__ BIO ;


 int BIO_clear_retry_flags (TYPE_1__*) ;
 int BIO_copy_next_retry (TYPE_1__*) ;
 int BIO_read (int *,char*,int) ;
 int acpt_state (TYPE_1__*,int *) ;

__attribute__((used)) static int acpt_read(BIO *b, char *out, int outl)
{
    int ret = 0;
    BIO_ACCEPT *data;

    BIO_clear_retry_flags(b);
    data = (BIO_ACCEPT *)b->ptr;

    while (b->next_bio == ((void*)0)) {
        ret = acpt_state(b, data);
        if (ret <= 0)
            return ret;
    }

    ret = BIO_read(b->next_bio, out, outl);
    BIO_copy_next_retry(b);
    return ret;
}
