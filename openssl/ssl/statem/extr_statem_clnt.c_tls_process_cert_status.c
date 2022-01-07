
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int MSG_PROCESS_CONTINUE_READING ;
 int MSG_PROCESS_ERROR ;
 int tls_process_cert_status_body (int *,int *) ;

MSG_PROCESS_RETURN tls_process_cert_status(SSL *s, PACKET *pkt)
{
    if (!tls_process_cert_status_body(s, pkt)) {

        return MSG_PROCESS_ERROR;
    }

    return MSG_PROCESS_CONTINUE_READING;
}
