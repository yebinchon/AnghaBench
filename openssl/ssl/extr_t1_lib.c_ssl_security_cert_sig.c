
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CTX ;
typedef int SSL ;


 int EXFLAG_SS ;
 int NID_undef ;
 int X509_get_extension_flags (int *) ;
 int X509_get_signature_info (int *,int*,int*,int*,int *) ;
 int ssl_ctx_security (int *,int,int,int,int *) ;
 int ssl_security (int *,int,int,int,int *) ;

__attribute__((used)) static int ssl_security_cert_sig(SSL *s, SSL_CTX *ctx, X509 *x, int op)
{

    int secbits, nid, pknid;

    if ((X509_get_extension_flags(x) & EXFLAG_SS) != 0)
        return 1;
    if (!X509_get_signature_info(x, &nid, &pknid, &secbits, ((void*)0)))
        secbits = -1;

    if (nid == NID_undef)
        nid = pknid;
    if (s)
        return ssl_security(s, op, secbits, nid, x);
    else
        return ssl_ctx_security(ctx, op, secbits, nid, x);
}
