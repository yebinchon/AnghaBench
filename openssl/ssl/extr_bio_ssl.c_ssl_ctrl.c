
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {long renegotiate_timeout; unsigned long last_time; long renegotiate_count; long num_renegotiates; TYPE_2__* ssl; int byte_count; } ;
struct TYPE_18__ {void* rbio; void* wbio; TYPE_1__* method; int handshake_func; } ;
struct TYPE_17__ {int ssl_accept; int ssl_connect; } ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ BIO_SSL ;
typedef void BIO ;
 int BIO_FLAGS_IO_SPECIAL ;
 int BIO_FLAGS_READ ;
 int BIO_FLAGS_SHOULD_RETRY ;
 int BIO_FLAGS_WRITE ;
 int BIO_RR_SSL_X509_LOOKUP ;
 int BIO_clear_retry_flags (void*) ;
 int BIO_copy_next_retry (void*) ;
 long BIO_ctrl (void*,int,long,void*) ;
 TYPE_3__* BIO_get_data (void*) ;
 int BIO_get_retry_reason (void*) ;
 long BIO_get_shutdown (void*) ;
 void* BIO_next (void*) ;
 long BIO_pending (void*) ;
 int BIO_push (void*,void*) ;
 int BIO_set_flags (void*,int) ;
 int BIO_set_init (void*,int) ;
 int BIO_set_next (void*,void*) ;
 int BIO_set_retry_reason (void*,int ) ;
 int BIO_set_retry_special (void*) ;
 int BIO_set_shutdown (void*,int) ;
 int BIO_up_ref (void*) ;




 int SSL_clear (TYPE_2__*) ;
 scalar_t__ SSL_do_handshake (TYPE_2__*) ;
 TYPE_2__* SSL_dup (TYPE_2__*) ;
 int SSL_free (TYPE_2__*) ;
 int SSL_get_error (TYPE_2__*,int) ;
 void* SSL_get_rbio (TYPE_2__*) ;
 long SSL_pending (TYPE_2__*) ;
 int SSL_set_accept_state (TYPE_2__*) ;
 int SSL_set_bio (TYPE_2__*,void*,void*) ;
 int SSL_set_connect_state (TYPE_2__*) ;
 int SSL_shutdown (TYPE_2__*) ;
 int ssl_free (void*) ;
 int ssl_new (void*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static long ssl_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    SSL **sslp, *ssl;
    BIO_SSL *bs, *dbs;
    BIO *dbio, *bio;
    long ret = 1;
    BIO *next;

    bs = BIO_get_data(b);
    next = BIO_next(b);
    ssl = bs->ssl;
    if ((ssl == ((void*)0)) && (cmd != 135))
        return 0;
    switch (cmd) {
    case 143:
        SSL_shutdown(ssl);

        if (ssl->handshake_func == ssl->method->ssl_connect)
            SSL_set_connect_state(ssl);
        else if (ssl->handshake_func == ssl->method->ssl_accept)
            SSL_set_accept_state(ssl);

        if (!SSL_clear(ssl)) {
            ret = 0;
            break;
        }

        if (next != ((void*)0))
            ret = BIO_ctrl(next, cmd, num, ptr);
        else if (ssl->rbio != ((void*)0))
            ret = BIO_ctrl(ssl->rbio, cmd, num, ptr);
        else
            ret = 1;
        break;
    case 147:
        ret = 0;
        break;
    case 132:
        if (num)
            SSL_set_connect_state(ssl);
        else
            SSL_set_accept_state(ssl);
        break;
    case 133:
        ret = bs->renegotiate_timeout;
        if (num < 60)
            num = 5;
        bs->renegotiate_timeout = (unsigned long)num;
        bs->last_time = (unsigned long)time(((void*)0));
        break;
    case 134:
        ret = bs->renegotiate_count;
        if ((long)num >= 512)
            bs->renegotiate_count = (unsigned long)num;
        break;
    case 136:
        ret = bs->num_renegotiates;
        break;
    case 135:
        if (ssl != ((void*)0)) {
            ssl_free(b);
            if (!ssl_new(b))
                return 0;
        }
        BIO_set_shutdown(b, num);
        ssl = (SSL *)ptr;
        bs->ssl = ssl;
        bio = SSL_get_rbio(ssl);
        if (bio != ((void*)0)) {
            if (next != ((void*)0))
                BIO_push(bio, next);
            BIO_set_next(b, bio);
            BIO_up_ref(bio);
        }
        BIO_set_init(b, 1);
        break;
    case 137:
        if (ptr != ((void*)0)) {
            sslp = (SSL **)ptr;
            *sslp = ssl;
        } else
            ret = 0;
        break;
    case 148:
        ret = BIO_get_shutdown(b);
        break;
    case 141:
        BIO_set_shutdown(b, (int)num);
        break;
    case 140:
        ret = BIO_ctrl(ssl->wbio, cmd, num, ptr);
        break;
    case 146:
        ret = SSL_pending(ssl);
        if (ret == 0)
            ret = BIO_pending(ssl->rbio);
        break;
    case 149:
        BIO_clear_retry_flags(b);
        ret = BIO_ctrl(ssl->wbio, cmd, num, ptr);
        BIO_copy_next_retry(b);
        break;
    case 144:
        if ((next != ((void*)0)) && (next != ssl->rbio)) {




            BIO_up_ref(next);
            SSL_set_bio(ssl, next, next);
        }
        break;
    case 145:

        if (b == ptr) {

            SSL_set_bio(ssl, ((void*)0), ((void*)0));
        }
        break;
    case 139:
        BIO_clear_retry_flags(b);

        BIO_set_retry_reason(b, 0);
        ret = (int)SSL_do_handshake(ssl);

        switch (SSL_get_error(ssl, (int)ret)) {
        case 130:
            BIO_set_flags(b, BIO_FLAGS_READ | BIO_FLAGS_SHOULD_RETRY);
            break;
        case 129:
            BIO_set_flags(b, BIO_FLAGS_WRITE | BIO_FLAGS_SHOULD_RETRY);
            break;
        case 131:
            BIO_set_flags(b, BIO_FLAGS_IO_SPECIAL | BIO_FLAGS_SHOULD_RETRY);
            BIO_set_retry_reason(b, BIO_get_retry_reason(next));
            break;
        case 128:
            BIO_set_retry_special(b);
            BIO_set_retry_reason(b, BIO_RR_SSL_X509_LOOKUP);
            break;
        default:
            break;
        }
        break;
    case 150:
        dbio = (BIO *)ptr;
        dbs = BIO_get_data(dbio);
        SSL_free(dbs->ssl);
        dbs->ssl = SSL_dup(ssl);
        dbs->num_renegotiates = bs->num_renegotiates;
        dbs->renegotiate_count = bs->renegotiate_count;
        dbs->byte_count = bs->byte_count;
        dbs->renegotiate_timeout = bs->renegotiate_timeout;
        dbs->last_time = bs->last_time;
        ret = (dbs->ssl != ((void*)0));
        break;
    case 138:
        ret = BIO_ctrl(ssl->rbio, cmd, num, ptr);
        break;
    case 142:
        ret = 0;
        break;
    default:
        ret = BIO_ctrl(ssl->rbio, cmd, num, ptr);
        break;
    }
    return ret;
}
