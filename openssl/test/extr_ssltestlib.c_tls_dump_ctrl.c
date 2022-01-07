
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;



 long BIO_ctrl (int *,int,long,void*) ;
 int * BIO_next (int *) ;

__attribute__((used)) static long tls_dump_ctrl(BIO *bio, int cmd, long num, void *ptr)
{
    long ret;
    BIO *next = BIO_next(bio);

    if (next == ((void*)0))
        return 0;

    switch (cmd) {
    case 128:
        ret = 0L;
        break;
    default:
        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    }
    return ret;
}
