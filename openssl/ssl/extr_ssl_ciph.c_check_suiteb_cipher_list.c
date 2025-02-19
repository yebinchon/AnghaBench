
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int cert_flags; } ;
struct TYPE_7__ {TYPE_1__* ssl3_enc; } ;
struct TYPE_6__ {int enc_flags; } ;
typedef TYPE_2__ SSL_METHOD ;
typedef TYPE_3__ CERT ;





 int SSL_ENC_FLAG_TLS1_2_CIPHERS ;
 int SSL_F_CHECK_SUITEB_CIPHER_LIST ;
 int SSL_R_AT_LEAST_TLS_1_2_NEEDED_IN_SUITEB_MODE ;
 int SSL_R_ECDH_REQUIRED_FOR_SUITEB_MODE ;
 int SSLerr (int ,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int check_suiteb_cipher_list(const SSL_METHOD *meth, CERT *c,
                                    const char **prule_str)
{
    unsigned int suiteb_flags = 0, suiteb_comb2 = 0;
    if (strncmp(*prule_str, "SUITEB128ONLY", 13) == 0) {
        suiteb_flags = 129;
    } else if (strncmp(*prule_str, "SUITEB128C2", 11) == 0) {
        suiteb_comb2 = 1;
        suiteb_flags = 130;
    } else if (strncmp(*prule_str, "SUITEB128", 9) == 0) {
        suiteb_flags = 130;
    } else if (strncmp(*prule_str, "SUITEB192", 9) == 0) {
        suiteb_flags = 128;
    }

    if (suiteb_flags) {
        c->cert_flags &= ~130;
        c->cert_flags |= suiteb_flags;
    } else {
        suiteb_flags = c->cert_flags & 130;
    }

    if (!suiteb_flags)
        return 1;


    if (!(meth->ssl3_enc->enc_flags & SSL_ENC_FLAG_TLS1_2_CIPHERS)) {
        SSLerr(SSL_F_CHECK_SUITEB_CIPHER_LIST,
               SSL_R_AT_LEAST_TLS_1_2_NEEDED_IN_SUITEB_MODE);
        return 0;
    }

    switch (suiteb_flags) {
    case 130:
        if (suiteb_comb2)
            *prule_str = "ECDHE-ECDSA-AES256-GCM-SHA384";
        else
            *prule_str =
                "ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384";
        break;
    case 129:
        *prule_str = "ECDHE-ECDSA-AES128-GCM-SHA256";
        break;
    case 128:
        *prule_str = "ECDHE-ECDSA-AES256-GCM-SHA384";
        break;
    }
    return 1;




}
