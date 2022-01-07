
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num; } ;
typedef TYPE_1__ BIO ;


 int BIO_clear_retry_flags (TYPE_1__*) ;
 scalar_t__ BIO_get_ktls_recv (TYPE_1__*) ;
 int BIO_set_retry_read (TYPE_1__*) ;
 scalar_t__ BIO_sock_should_retry (int) ;
 int clear_socket_error () ;
 int ktls_read_record (int ,char*,int) ;
 int readsocket (int ,char*,int) ;

__attribute__((used)) static int sock_read(BIO *b, char *out, int outl)
{
    int ret = 0;

    if (out != ((void*)0)) {
        clear_socket_error();

        if (BIO_get_ktls_recv(b))
            ret = ktls_read_record(b->num, out, outl);
        else

            ret = readsocket(b->num, out, outl);
        BIO_clear_retry_flags(b);
        if (ret <= 0) {
            if (BIO_sock_should_retry(ret))
                BIO_set_retry_read(b);
        }
    }
    return ret;
}
