
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int early_data_state; int mode; int wbio; int * psk_use_session_cb; TYPE_2__* session; int server; } ;
struct TYPE_9__ {int max_early_data; } ;
struct TYPE_10__ {TYPE_1__ ext; } ;
typedef TYPE_3__ SSL ;


 int BIO_flush (int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int SSL_EARLY_DATA_CONNECTING ;




 int SSL_EARLY_DATA_UNAUTH_WRITING ;


 int SSL_EARLY_DATA_WRITING ;
 int SSL_F_SSL_WRITE_EARLY_DATA ;
 int SSL_MODE_ENABLE_PARTIAL_WRITE ;
 int SSL_connect (TYPE_3__*) ;
 int SSL_in_before (TYPE_3__*) ;
 int SSL_write_ex (TYPE_3__*,void const*,size_t,size_t*) ;
 int SSLerr (int ,int ) ;
 int statem_flush (TYPE_3__*) ;

int SSL_write_early_data(SSL *s, const void *buf, size_t num, size_t *written)
{
    int ret, early_data_state;
    size_t writtmp;
    uint32_t partialwrite;

    switch (s->early_data_state) {
    case 131:
        if (s->server
                || !SSL_in_before(s)
                || ((s->session == ((void*)0) || s->session->ext.max_early_data == 0)
                     && (s->psk_use_session_cb == ((void*)0)))) {
            SSLerr(SSL_F_SSL_WRITE_EARLY_DATA,
                   ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
            return 0;
        }


    case 133:
        s->early_data_state = SSL_EARLY_DATA_CONNECTING;
        ret = SSL_connect(s);
        if (ret <= 0) {

            s->early_data_state = 133;
            return 0;
        }


    case 128:
        s->early_data_state = SSL_EARLY_DATA_WRITING;





        partialwrite = s->mode & SSL_MODE_ENABLE_PARTIAL_WRITE;
        s->mode &= ~SSL_MODE_ENABLE_PARTIAL_WRITE;
        ret = SSL_write_ex(s, buf, num, &writtmp);
        s->mode |= partialwrite;
        if (!ret) {
            s->early_data_state = 128;
            return ret;
        }
        s->early_data_state = 129;


    case 129:

        if (statem_flush(s) != 1)
            return 0;
        *written = num;
        s->early_data_state = 128;
        return 1;

    case 132:
    case 130:
        early_data_state = s->early_data_state;

        s->early_data_state = SSL_EARLY_DATA_UNAUTH_WRITING;
        ret = SSL_write_ex(s, buf, num, written);

        if (ret)
            (void)BIO_flush(s->wbio);
        s->early_data_state = early_data_state;
        return ret;

    default:
        SSLerr(SSL_F_SSL_WRITE_EARLY_DATA, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }
}
