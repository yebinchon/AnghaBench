
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_ASN1_METHOD ;


 int ASN1_PKEY_ALIAS ;
 int ASN1_PKEY_DYNAMIC ;
 int BIO_printf (int ,char*,char const*) ;
 int * EVP_PKEY_asn1_get0 (int) ;
 int EVP_PKEY_asn1_get0_info (int*,int*,int*,char const**,char const**,int const*) ;
 int EVP_PKEY_asn1_get_count () ;
 char const* OBJ_nid2ln (int) ;
 int bio_out ;

__attribute__((used)) static void list_pkey(void)
{
    int i;

    for (i = 0; i < EVP_PKEY_asn1_get_count(); i++) {
        const EVP_PKEY_ASN1_METHOD *ameth;
        int pkey_id, pkey_base_id, pkey_flags;
        const char *pinfo, *pem_str;
        ameth = EVP_PKEY_asn1_get0(i);
        EVP_PKEY_asn1_get0_info(&pkey_id, &pkey_base_id, &pkey_flags,
                                &pinfo, &pem_str, ameth);
        if (pkey_flags & ASN1_PKEY_ALIAS) {
            BIO_printf(bio_out, "Name: %s\n", OBJ_nid2ln(pkey_id));
            BIO_printf(bio_out, "\tAlias for: %s\n",
                       OBJ_nid2ln(pkey_base_id));
        } else {
            BIO_printf(bio_out, "Name: %s\n", pinfo);
            BIO_printf(bio_out, "\tType: %s Algorithm\n",
                       pkey_flags & ASN1_PKEY_DYNAMIC ?
                       "External" : "Builtin");
            BIO_printf(bio_out, "\tOID: %s\n", OBJ_nid2ln(pkey_id));
            if (pem_str == ((void*)0))
                pem_str = "(none)";
            BIO_printf(bio_out, "\tPEM string: %s\n", pem_str);
        }

    }
}
