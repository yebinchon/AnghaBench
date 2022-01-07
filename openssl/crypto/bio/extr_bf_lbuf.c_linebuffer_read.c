
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * next_bio; } ;
typedef TYPE_1__ BIO ;


 int BIO_clear_retry_flags (TYPE_1__*) ;
 int BIO_copy_next_retry (TYPE_1__*) ;
 int BIO_read (int *,char*,int) ;

__attribute__((used)) static int linebuffer_read(BIO *b, char *out, int outl)
{
    int ret = 0;

    if (out == ((void*)0))
        return 0;
    if (b->next_bio == ((void*)0))
        return 0;
    ret = BIO_read(b->next_bio, out, outl);
    BIO_clear_retry_flags(b);
    BIO_copy_next_retry(b);
    return ret;
}
