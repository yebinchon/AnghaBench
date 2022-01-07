
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num; } ;
typedef TYPE_1__ BIO ;


 int BIO_clear_retry_flags (TYPE_1__*) ;
 scalar_t__ BIO_fd_should_retry (int) ;
 int BIO_set_retry_read (TYPE_1__*) ;
 int UP_read (int ,char*,int) ;
 int clear_sys_error () ;

__attribute__((used)) static int fd_read(BIO *b, char *out, int outl)
{
    int ret = 0;

    if (out != ((void*)0)) {
        clear_sys_error();
        ret = UP_read(b->num, out, outl);
        BIO_clear_retry_flags(b);
        if (ret <= 0) {
            if (BIO_fd_should_retry(ret))
                BIO_set_retry_read(b);
        }
    }
    return ret;
}
