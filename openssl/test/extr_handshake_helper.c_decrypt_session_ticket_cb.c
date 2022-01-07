
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_TICKET_STATUS ;
typedef int SSL_SESSION ;
typedef int SSL ;




 int SSL_TICKET_RETURN_ABORT ;
 int SSL_TICKET_RETURN_IGNORE_RENEW ;
 int SSL_TICKET_RETURN_USE ;
 int SSL_TICKET_RETURN_USE_RENEW ;



__attribute__((used)) static int decrypt_session_ticket_cb(SSL *s, SSL_SESSION *ss,
                                     const unsigned char *keyname,
                                     size_t keyname_len,
                                     SSL_TICKET_STATUS status,
                                     void *arg)
{
    switch (status) {
    case 131:
    case 130:
        return SSL_TICKET_RETURN_IGNORE_RENEW;
    case 129:
        return SSL_TICKET_RETURN_USE;
    case 128:
        return SSL_TICKET_RETURN_USE_RENEW;
    default:
        break;
    }
    return SSL_TICKET_RETURN_ABORT;
}
