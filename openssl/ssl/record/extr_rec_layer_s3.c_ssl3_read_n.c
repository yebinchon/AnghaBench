
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {unsigned char* buf; size_t left; size_t offset; size_t len; } ;
struct TYPE_9__ {unsigned char* packet; size_t packet_length; int read_ahead; TYPE_2__ rbuf; } ;
struct TYPE_11__ {int mode; int rwstate; TYPE_1__ rlayer; int * rbio; } ;
typedef TYPE_2__ SSL3_BUFFER ;
typedef TYPE_3__ SSL ;


 int BIO_get_ktls_recv (int *) ;
 int BIO_read (int *,unsigned char*,size_t) ;
 int ERR_R_INTERNAL_ERROR ;
 int SSL3_ALIGN_PAYLOAD ;
 unsigned char SSL3_RT_APPLICATION_DATA ;
 size_t SSL3_RT_HEADER_LENGTH ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_READ_N ;
 scalar_t__ SSL_IS_DTLS (TYPE_3__*) ;
 int SSL_MODE_RELEASE_BUFFERS ;
 int SSL_NOTHING ;
 int SSL_READING ;
 int SSL_R_READ_BIO_NOT_SET ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int clear_sys_error () ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int ssl3_release_read_buffer (TYPE_3__*) ;
 int ssl3_setup_read_buffer (TYPE_3__*) ;

int ssl3_read_n(SSL *s, size_t n, size_t max, int extend, int clearold,
                size_t *readbytes)
{
    size_t len, left, align = 0;
    unsigned char *pkt;
    SSL3_BUFFER *rb;

    if (n == 0)
        return 0;

    rb = &s->rlayer.rbuf;
    if (rb->buf == ((void*)0))
        if (!ssl3_setup_read_buffer(s)) {

            return -1;
        }

    left = rb->left;





    if (!extend) {

        if (left == 0)
            rb->offset = align;
        else if (align != 0 && left >= SSL3_RT_HEADER_LENGTH) {




            pkt = rb->buf + rb->offset;
            if (pkt[0] == SSL3_RT_APPLICATION_DATA
                && (pkt[3] << 8 | pkt[4]) >= 128) {







                memmove(rb->buf + align, pkt, left);
                rb->offset = align;
            }
        }
        s->rlayer.packet = rb->buf + rb->offset;
        s->rlayer.packet_length = 0;

    }

    len = s->rlayer.packet_length;
    pkt = rb->buf + align;




    if (s->rlayer.packet != pkt && clearold == 1) {
        memmove(pkt, s->rlayer.packet, len + left);
        s->rlayer.packet = pkt;
        rb->offset = len + align;
    }






    if (SSL_IS_DTLS(s)) {
        if (left == 0 && extend)
            return 0;
        if (left > 0 && n > left)
            n = left;
    }


    if (left >= n) {
        s->rlayer.packet_length += n;
        rb->left = left - n;
        rb->offset += n;
        *readbytes = n;
        return 1;
    }



    if (n > rb->len - rb->offset) {

        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_READ_N,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }





    if (!BIO_get_ktls_recv(s->rbio) && !s->rlayer.read_ahead
        && !SSL_IS_DTLS(s)) {

        max = n;
    } else {
        if (max < n)
            max = n;
        if (max > rb->len - rb->offset)
            max = rb->len - rb->offset;
    }

    while (left < n) {
        size_t bioread = 0;
        int ret;







        clear_sys_error();
        if (s->rbio != ((void*)0)) {
            s->rwstate = SSL_READING;

            ret = BIO_read(s->rbio, pkt + len + left, max - left);
            if (ret >= 0)
                bioread = ret;
        } else {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_READ_N,
                     SSL_R_READ_BIO_NOT_SET);
            ret = -1;
        }

        if (ret <= 0) {
            rb->left = left;
            if (s->mode & SSL_MODE_RELEASE_BUFFERS && !SSL_IS_DTLS(s))
                if (len + left == 0)
                    ssl3_release_read_buffer(s);
            return ret;
        }
        left += bioread;





        if (SSL_IS_DTLS(s)) {
            if (n > left)
                n = left;
        }
    }


    rb->offset += n;
    rb->left = left - n;
    s->rlayer.packet_length += n;
    s->rwstate = SSL_NOTHING;
    *readbytes = n;
    return 1;
}
