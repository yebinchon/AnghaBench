
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_2__ tmp; } ;
struct TYPE_12__ {TYPE_3__ s3; } ;
struct TYPE_9__ {int algorithm_mkey; } ;
typedef TYPE_4__ SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int MSG_PROCESS_ERROR ;
 int MSG_PROCESS_FINISHED_READING ;
 scalar_t__ PACKET_remaining (int *) ;
 scalar_t__ SRP_Calc_A_param (TYPE_4__*) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_SERVER_DONE ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_SRP_A_CALC ;
 int SSL_kSRP ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int tls_process_initial_server_flight (TYPE_4__*) ;

MSG_PROCESS_RETURN tls_process_server_done(SSL *s, PACKET *pkt)
{
    if (PACKET_remaining(pkt) > 0) {

        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SERVER_DONE,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }

    if (s->s3.tmp.new_cipher->algorithm_mkey & SSL_kSRP) {
        if (SRP_Calc_A_param(s) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SERVER_DONE,
                     SSL_R_SRP_A_CALC);
            return MSG_PROCESS_ERROR;
        }
    }


    if (!tls_process_initial_server_flight(s)) {

        return MSG_PROCESS_ERROR;
    }

    return MSG_PROCESS_FINISHED_READING;
}
