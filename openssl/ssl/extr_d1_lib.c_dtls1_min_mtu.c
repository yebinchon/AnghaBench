
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 size_t BIO_dgram_get_mtu_overhead (int ) ;
 int SSL_get_wbio (int *) ;
 size_t dtls1_link_min_mtu () ;

size_t dtls1_min_mtu(SSL *s)
{
    return dtls1_link_min_mtu() - BIO_dgram_get_mtu_overhead(SSL_get_wbio(s));
}
