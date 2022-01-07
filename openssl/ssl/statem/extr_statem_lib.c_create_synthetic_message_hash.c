
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int msghdr ;
typedef int hashvaltmp ;
struct TYPE_11__ {int message_size; } ;
struct TYPE_12__ {TYPE_2__ tmp; } ;
struct TYPE_13__ {TYPE_3__ s3; TYPE_1__* init_buf; } ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef TYPE_4__ SSL ;


 int EVP_MAX_MD_SIZE ;
 int SSL3_HM_HEADER_LENGTH ;
 unsigned char SSL3_MT_MESSAGE_HASH ;
 int memset (unsigned char*,int ,int) ;
 int ssl3_digest_cached_records (TYPE_4__*,int ) ;
 int ssl3_finish_mac (TYPE_4__*,unsigned char const*,int) ;
 int ssl3_init_finished_mac (TYPE_4__*) ;
 int ssl_handshake_hash (TYPE_4__*,unsigned char*,int,size_t*) ;

int create_synthetic_message_hash(SSL *s, const unsigned char *hashval,
                                  size_t hashlen, const unsigned char *hrr,
                                  size_t hrrlen)
{
    unsigned char hashvaltmp[EVP_MAX_MD_SIZE];
    unsigned char msghdr[SSL3_HM_HEADER_LENGTH];

    memset(msghdr, 0, sizeof(msghdr));

    if (hashval == ((void*)0)) {
        hashval = hashvaltmp;
        hashlen = 0;

        if (!ssl3_digest_cached_records(s, 0)
                || !ssl_handshake_hash(s, hashvaltmp, sizeof(hashvaltmp),
                                       &hashlen)) {

            return 0;
        }
    }


    if (!ssl3_init_finished_mac(s)) {

        return 0;
    }


    msghdr[0] = SSL3_MT_MESSAGE_HASH;
    msghdr[SSL3_HM_HEADER_LENGTH - 1] = (unsigned char)hashlen;
    if (!ssl3_finish_mac(s, msghdr, SSL3_HM_HEADER_LENGTH)
            || !ssl3_finish_mac(s, hashval, hashlen)) {

        return 0;
    }






    if (hrr != ((void*)0)
            && (!ssl3_finish_mac(s, hrr, hrrlen)
                || !ssl3_finish_mac(s, (unsigned char *)s->init_buf->data,
                                    s->s3.tmp.message_size
                                    + SSL3_HM_HEADER_LENGTH))) {

        return 0;
    }

    return 1;
}
