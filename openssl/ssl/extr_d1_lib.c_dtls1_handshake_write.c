
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL3_RT_HANDSHAKE ;
 int dtls1_do_write (int *,int ) ;

__attribute__((used)) static int dtls1_handshake_write(SSL *s)
{
    return dtls1_do_write(s, SSL3_RT_HANDSHAKE);
}
