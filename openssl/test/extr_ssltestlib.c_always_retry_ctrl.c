
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
 int BIO_set_retry_write (int *) ;

__attribute__((used)) static long always_retry_ctrl(BIO *bio, int cmd, long num, void *ptr)
{
    long ret = 1;

    switch (cmd) {
    case 131:
        BIO_set_retry_write(bio);

    case 132:
    case 128:
    case 133:
    case 129:
    case 130:
    default:
        ret = 0;
        break;
    }
    return ret;
}
