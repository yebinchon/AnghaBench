
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int num; int ptr; } ;
typedef TYPE_1__ BIO ;


 int BIO_clear_ktls_ctrl_msg_flag (TYPE_1__*) ;
 int BIO_clear_retry_flags (TYPE_1__*) ;
 int BIO_set_retry_write (TYPE_1__*) ;
 scalar_t__ BIO_should_ktls_ctrl_msg_flag (TYPE_1__*) ;
 scalar_t__ BIO_sock_should_retry (int) ;
 int clear_socket_error () ;
 int ktls_send_ctrl_message (int ,unsigned char,char const*,int) ;
 int writesocket (int ,char const*,int) ;

__attribute__((used)) static int sock_write(BIO *b, const char *in, int inl)
{
    int ret = 0;

    clear_socket_error();

    if (BIO_should_ktls_ctrl_msg_flag(b)) {
        unsigned char record_type = (intptr_t)b->ptr;
        ret = ktls_send_ctrl_message(b->num, record_type, in, inl);
        if (ret >= 0) {
            ret = inl;
            BIO_clear_ktls_ctrl_msg_flag(b);
        }
    } else

        ret = writesocket(b->num, in, inl);
    BIO_clear_retry_flags(b);
    if (ret <= 0) {
        if (BIO_sock_should_retry(ret))
            BIO_set_retry_write(b);
    }
    return ret;
}
