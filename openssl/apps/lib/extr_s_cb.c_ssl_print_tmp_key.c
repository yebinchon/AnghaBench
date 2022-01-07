
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int BIO ;


 int BIO_printf (int *,char*,char const*,...) ;
 int BIO_puts (int *,char*) ;
 int EC_GROUP_get_curve_name (int ) ;
 int EC_KEY_free (int *) ;
 int EC_KEY_get0_group (int *) ;
 char* EC_curve_nid2nist (int) ;



 int EVP_PKEY_bits (int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int EVP_PKEY_id (int *) ;
 char const* OBJ_nid2sn (int) ;
 int SSL_get_peer_tmp_key (int *,int **) ;

int ssl_print_tmp_key(BIO *out, SSL *s)
{
    EVP_PKEY *key;

    if (!SSL_get_peer_tmp_key(s, &key))
        return 1;
    BIO_puts(out, "Server Temp Key: ");
    switch (EVP_PKEY_id(key)) {
    case 128:
        BIO_printf(out, "RSA, %d bits\n", EVP_PKEY_bits(key));
        break;

    case 130:
        BIO_printf(out, "DH, %d bits\n", EVP_PKEY_bits(key));
        break;

    case 129:
        {
            EC_KEY *ec = EVP_PKEY_get1_EC_KEY(key);
            int nid;
            const char *cname;
            nid = EC_GROUP_get_curve_name(EC_KEY_get0_group(ec));
            EC_KEY_free(ec);
            cname = EC_curve_nid2nist(nid);
            if (cname == ((void*)0))
                cname = OBJ_nid2sn(nid);
            BIO_printf(out, "ECDH, %s, %d bits\n", cname, EVP_PKEY_bits(key));
        }
    break;

    default:
        BIO_printf(out, "%s, %d bits\n", OBJ_nid2sn(EVP_PKEY_id(key)),
                   EVP_PKEY_bits(key));
    }
    EVP_PKEY_free(key);
    return 1;
}
