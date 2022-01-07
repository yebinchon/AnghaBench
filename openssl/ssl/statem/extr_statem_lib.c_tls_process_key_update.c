
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int key_update; int rlayer; } ;
typedef TYPE_1__ SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int MSG_PROCESS_ERROR ;
 int MSG_PROCESS_FINISHED_READING ;
 int PACKET_get_1 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 scalar_t__ RECORD_LAYER_processed_read_pending (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_UNEXPECTED_MESSAGE ;
 int SSL_F_TLS_PROCESS_KEY_UPDATE ;
 unsigned int SSL_KEY_UPDATE_NOT_REQUESTED ;
 unsigned int SSL_KEY_UPDATE_REQUESTED ;
 int SSL_R_BAD_KEY_UPDATE ;
 int SSL_R_NOT_ON_RECORD_BOUNDARY ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int tls13_update_key (TYPE_1__*,int ) ;

MSG_PROCESS_RETURN tls_process_key_update(SSL *s, PACKET *pkt)
{
    unsigned int updatetype;





    if (RECORD_LAYER_processed_read_pending(&s->rlayer)) {
        SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE, SSL_F_TLS_PROCESS_KEY_UPDATE,
                 SSL_R_NOT_ON_RECORD_BOUNDARY);
        return MSG_PROCESS_ERROR;
    }

    if (!PACKET_get_1(pkt, &updatetype)
            || PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_KEY_UPDATE,
                 SSL_R_BAD_KEY_UPDATE);
        return MSG_PROCESS_ERROR;
    }





    if (updatetype != SSL_KEY_UPDATE_NOT_REQUESTED
            && updatetype != SSL_KEY_UPDATE_REQUESTED) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_KEY_UPDATE,
                 SSL_R_BAD_KEY_UPDATE);
        return MSG_PROCESS_ERROR;
    }






    if (updatetype == SSL_KEY_UPDATE_REQUESTED)
        s->key_update = SSL_KEY_UPDATE_NOT_REQUESTED;

    if (!tls13_update_key(s, 0)) {

        return MSG_PROCESS_ERROR;
    }

    return MSG_PROCESS_FINISHED_READING;
}
