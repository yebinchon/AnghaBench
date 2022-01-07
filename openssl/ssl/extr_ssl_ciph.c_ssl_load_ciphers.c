
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nid; int mask; } ;
typedef TYPE_1__ ssl_cipher_table ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int EVP_MD_size (int const*) ;
 int * EVP_get_cipherbynid (scalar_t__) ;
 int * EVP_get_digestbynid (scalar_t__) ;
 scalar_t__ NID_undef ;
 size_t SSL_ENC_NUM_IDX ;
 int SSL_GOST89MAC ;
 int SSL_GOST89MAC12 ;
 size_t SSL_MD_GOST89MAC12_IDX ;
 size_t SSL_MD_GOST89MAC_IDX ;
 size_t SSL_MD_MD5_IDX ;
 size_t SSL_MD_NUM_IDX ;
 size_t SSL_MD_SHA1_IDX ;
 int SSL_PSK ;
 int SSL_aDSS ;
 int SSL_aECDSA ;
 int SSL_aGOST01 ;
 int SSL_aGOST12 ;
 int SSL_aPSK ;
 int SSL_aRSA ;
 int SSL_kDHE ;
 int SSL_kDHEPSK ;
 int SSL_kECDHE ;
 int SSL_kECDHEPSK ;
 int SSL_kGOST ;
 int SSL_kRSA ;
 int SSL_kRSAPSK ;
 int SSL_kSRP ;
 int disabled_auth_mask ;
 int disabled_enc_mask ;
 int disabled_mac_mask ;
 int disabled_mkey_mask ;
 scalar_t__ get_optional_pkey_id (char*) ;
 int ossl_assert (int) ;
 int const** ssl_cipher_methods ;
 TYPE_1__* ssl_cipher_table_cipher ;
 TYPE_1__* ssl_cipher_table_mac ;
 int const** ssl_digest_methods ;
 scalar_t__* ssl_mac_pkey_id ;
 int* ssl_mac_secret_size ;
 int ssl_sort_cipher_list () ;

int ssl_load_ciphers(void)
{
    size_t i;
    const ssl_cipher_table *t;

    disabled_enc_mask = 0;
    ssl_sort_cipher_list();
    for (i = 0, t = ssl_cipher_table_cipher; i < SSL_ENC_NUM_IDX; i++, t++) {
        if (t->nid == NID_undef) {
            ssl_cipher_methods[i] = ((void*)0);
        } else {
            const EVP_CIPHER *cipher = EVP_get_cipherbynid(t->nid);
            ssl_cipher_methods[i] = cipher;
            if (cipher == ((void*)0))
                disabled_enc_mask |= t->mask;
        }
    }
    disabled_mac_mask = 0;
    for (i = 0, t = ssl_cipher_table_mac; i < SSL_MD_NUM_IDX; i++, t++) {
        const EVP_MD *md = EVP_get_digestbynid(t->nid);
        ssl_digest_methods[i] = md;
        if (md == ((void*)0)) {
            disabled_mac_mask |= t->mask;
        } else {
            int tmpsize = EVP_MD_size(md);
            if (!ossl_assert(tmpsize >= 0))
                return 0;
            ssl_mac_secret_size[i] = tmpsize;
        }
    }

    if (!ossl_assert(ssl_digest_methods[SSL_MD_MD5_IDX] != ((void*)0)))
        return 0;
    if (!ossl_assert(ssl_digest_methods[SSL_MD_SHA1_IDX] != ((void*)0)))
        return 0;

    disabled_mkey_mask = 0;
    disabled_auth_mask = 0;
    ssl_mac_pkey_id[SSL_MD_GOST89MAC_IDX] = get_optional_pkey_id("gost-mac");
    if (ssl_mac_pkey_id[SSL_MD_GOST89MAC_IDX])
        ssl_mac_secret_size[SSL_MD_GOST89MAC_IDX] = 32;
    else
        disabled_mac_mask |= SSL_GOST89MAC;

    ssl_mac_pkey_id[SSL_MD_GOST89MAC12_IDX] =
        get_optional_pkey_id("gost-mac-12");
    if (ssl_mac_pkey_id[SSL_MD_GOST89MAC12_IDX])
        ssl_mac_secret_size[SSL_MD_GOST89MAC12_IDX] = 32;
    else
        disabled_mac_mask |= SSL_GOST89MAC12;

    if (!get_optional_pkey_id("gost2001"))
        disabled_auth_mask |= SSL_aGOST01 | SSL_aGOST12;
    if (!get_optional_pkey_id("gost2012_256"))
        disabled_auth_mask |= SSL_aGOST12;
    if (!get_optional_pkey_id("gost2012_512"))
        disabled_auth_mask |= SSL_aGOST12;



    if ((disabled_auth_mask & (SSL_aGOST01 | SSL_aGOST12)) ==
        (SSL_aGOST01 | SSL_aGOST12))
        disabled_mkey_mask |= SSL_kGOST;

    return 1;
}
