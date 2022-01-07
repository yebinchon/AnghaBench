
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL ;


 int NID_undef ;
 int * SSL_get_peer_certificate (int *) ;
 int X509_free (int *) ;
 int X509_get0_pubkey (int *) ;
 int pkey_type (int ) ;

__attribute__((used)) static int peer_pkey_type(SSL *s)
{
    X509 *x = SSL_get_peer_certificate(s);

    if (x != ((void*)0)) {
        int nid = pkey_type(X509_get0_pubkey(x));

        X509_free(x);
        return nid;
    }
    return NID_undef;
}
