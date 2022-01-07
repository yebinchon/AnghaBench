
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int BIO ;


 int BIO_printf (int *,char*,int ,char const*) ;
 int EC_GROUP_get_curve_name (int ) ;
 int EC_KEY_free (int *) ;
 int EC_KEY_get0_group (int *) ;
 char* EC_curve_nid2nist (int) ;


 int EVP_PKEY_EC ;

 int EVP_PKEY_bits (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int EVP_PKEY_id (int *) ;
 char* OBJ_nid2sn (int) ;

__attribute__((used)) static void print_key_details(BIO *out, EVP_PKEY *key)
{
    int keyid = EVP_PKEY_id(key);

    if (keyid == EVP_PKEY_EC) {
        EC_KEY *ec = EVP_PKEY_get1_EC_KEY(key);
        int nid;
        const char *cname;
        nid = EC_GROUP_get_curve_name(EC_KEY_get0_group(ec));
        EC_KEY_free(ec);
        cname = EC_curve_nid2nist(nid);
        if (!cname)
            cname = OBJ_nid2sn(nid);
        BIO_printf(out, "%d bits EC (%s)", EVP_PKEY_bits(key), cname);
    } else

    {
        const char *algname;
        switch (keyid) {
        case 128:
            algname = "RSA";
            break;
        case 129:
            algname = "DSA";
            break;
        case 130:
            algname = "DH";
            break;
        default:
            algname = OBJ_nid2sn(keyid);
            break;
        }
        BIO_printf(out, "%d bits %s", EVP_PKEY_bits(key), algname);
    }
}
