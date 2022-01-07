
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_ASN1_METHOD ;


 int * EVP_PKEY_asn1_get0 (int) ;
 int EVP_PKEY_asn1_get0_info (int*,int *,int *,char const**,int *,int const*) ;
 int EVP_PKEY_asn1_get_count () ;
 int OBJ_nid2ln (int) ;
 int TEST_error (char*) ;
 int TEST_note (char*,int,int ,char const*) ;

__attribute__((used)) static int test_asn1_meths(void)
{
    int i;
    int prev = -1;
    int good = 1;
    int pkey_id;
    const EVP_PKEY_ASN1_METHOD *ameth;

    for (i = 0; i < EVP_PKEY_asn1_get_count(); i++) {
        ameth = EVP_PKEY_asn1_get0(i);
        EVP_PKEY_asn1_get0_info(&pkey_id, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ameth);
        if (pkey_id < prev)
            good = 0;
        prev = pkey_id;

    }
    if (!good) {
        TEST_error("EVP_PKEY_ASN1_METHOD table out of order");
        for (i = 0; i < EVP_PKEY_asn1_get_count(); i++) {
            const char *info;

            ameth = EVP_PKEY_asn1_get0(i);
            EVP_PKEY_asn1_get0_info(&pkey_id, ((void*)0), ((void*)0), &info, ((void*)0), ameth);
            if (info == ((void*)0))
                info = "<NO NAME>";
            TEST_note("%d : %s : %s", pkey_id, OBJ_nid2ln(pkey_id), info);
        }
    }
    return good;
}
