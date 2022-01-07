
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * next_bio; } ;
typedef TYPE_1__ BIO ;


 int BIO_clear_retry_flags (TYPE_1__*) ;
 int BIO_copy_next_retry (TYPE_1__*) ;
 int BIO_read (int *,char*,int) ;
 int BIO_set_retry_read (TYPE_1__*) ;
 scalar_t__ RAND_priv_bytes (unsigned char*,int) ;

__attribute__((used)) static int nbiof_read(BIO *b, char *out, int outl)
{
    int ret = 0;
    int num;
    unsigned char n;

    if (out == ((void*)0))
        return 0;
    if (b->next_bio == ((void*)0))
        return 0;

    BIO_clear_retry_flags(b);
    if (RAND_priv_bytes(&n, 1) <= 0)
        return -1;
    num = (n & 0x07);

    if (outl > num)
        outl = num;

    if (num == 0) {
        ret = -1;
        BIO_set_retry_read(b);
    } else {
        ret = BIO_read(b->next_bio, out, outl);
        if (ret < 0)
            BIO_copy_next_retry(b);
    }
    return ret;
}
