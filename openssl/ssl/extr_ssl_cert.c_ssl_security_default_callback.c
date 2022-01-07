
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int algorithm_auth; int algorithm_mac; int algorithm_mkey; int min_tls; int algorithm_enc; } ;
typedef int SSL_CTX ;
typedef TYPE_1__ SSL_CIPHER ;
typedef int SSL ;


 int DTLS1_2_VERSION ;
 int DTLS_VERSION_LT (int,int ) ;
 int SSL3_VERSION ;
 int SSL_CTX_get_security_level (int const*) ;
 int SSL_IS_DTLS (int const*) ;
 int SSL_MD5 ;
 int SSL_RC4 ;





 int SSL_SECOP_TMP_DH ;

 int SSL_SHA1 ;
 int SSL_aNULL ;
 int SSL_get_security_level (int const*) ;
 int SSL_kEDH ;
 int SSL_kEECDH ;
 int TLS1_1_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;

__attribute__((used)) static int ssl_security_default_callback(const SSL *s, const SSL_CTX *ctx,
                                         int op, int bits, int nid, void *other,
                                         void *ex)
{
    int level, minbits;
    static const int minbits_table[5] = { 80, 112, 128, 192, 256 };
    if (ctx)
        level = SSL_CTX_get_security_level(ctx);
    else
        level = SSL_get_security_level(s);

    if (level <= 0) {




        if (op == SSL_SECOP_TMP_DH && bits < 80)
            return 0;
        return 1;
    }
    if (level > 5)
        level = 5;
    minbits = minbits_table[level - 1];
    switch (op) {
    case 131:
    case 132:
    case 133:
        {
            const SSL_CIPHER *c = other;

            if (bits < minbits)
                return 0;

            if (c->algorithm_auth & SSL_aNULL)
                return 0;

            if (c->algorithm_mac & SSL_MD5)
                return 0;

            if (minbits > 160 && c->algorithm_mac & SSL_SHA1)
                return 0;

            if (level >= 2 && c->algorithm_enc == SSL_RC4)
                return 0;

            if (level >= 3 && c->min_tls != TLS1_3_VERSION &&
                               !(c->algorithm_mkey & (SSL_kEDH | SSL_kEECDH)))
                return 0;
            break;
        }
    case 128:
        if (!SSL_IS_DTLS(s)) {

            if (nid <= SSL3_VERSION && level >= 2)
                return 0;

            if (nid <= TLS1_VERSION && level >= 3)
                return 0;

            if (nid <= TLS1_1_VERSION && level >= 4)
                return 0;
        } else {

            if (DTLS_VERSION_LT(nid, DTLS1_2_VERSION) && level >= 4)
                return 0;
        }
        break;

    case 130:
        if (level >= 2)
            return 0;
        break;
    case 129:
        if (level >= 3)
            return 0;
        break;
    default:
        if (bits < minbits)
            return 0;
    }
    return 1;
}
