
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int keybytes ;
typedef int X509_NAME ;
typedef int OCSP_CERTID ;
typedef int OCSP_BASICRESP ;
typedef int ASN1_TIME ;
typedef int ASN1_INTEGER ;
typedef int ASN1_BIT_STRING ;


 int ASN1_BIT_STRING_free (int *) ;
 int * ASN1_BIT_STRING_new () ;
 int ASN1_BIT_STRING_set (int *,unsigned char*,int) ;
 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set_uint64 (int *,int ) ;
 int ASN1_TIME_free (int *) ;
 int * ASN1_TIME_set (int *,scalar_t__) ;
 int EVP_sha256 () ;
 int MBSTRING_ASC ;
 int NID_commonName ;
 int OCSP_BASICRESP_free (int *) ;
 int * OCSP_BASICRESP_new () ;
 int OCSP_CERTID_free (int *) ;
 int OCSP_basic_add1_status (int *,int *,int ,int ,int *,int *,int *) ;
 int * OCSP_cert_id_new (int ,int *,int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int V_OCSP_CERTSTATUS_UNKNOWN ;
 int X509_NAME_add_entry_by_NID (int *,int ,int ,unsigned char const*,int,int,int) ;
 int X509_NAME_free (int *) ;
 int * X509_NAME_new () ;
 scalar_t__ time (int *) ;

__attribute__((used)) static OCSP_BASICRESP *make_dummy_resp(void)
{
    const unsigned char namestr[] = "openssl.example.com";
    unsigned char keybytes[128] = {7};
    OCSP_BASICRESP *bs = OCSP_BASICRESP_new();
    OCSP_BASICRESP *bs_out = ((void*)0);
    OCSP_CERTID *cid = ((void*)0);
    ASN1_TIME *thisupd = ASN1_TIME_set(((void*)0), time(((void*)0)));
    ASN1_TIME *nextupd = ASN1_TIME_set(((void*)0), time(((void*)0)) + 200);
    X509_NAME *name = X509_NAME_new();
    ASN1_BIT_STRING *key = ASN1_BIT_STRING_new();
    ASN1_INTEGER *serial = ASN1_INTEGER_new();

    if (!X509_NAME_add_entry_by_NID(name, NID_commonName, MBSTRING_ASC,
                                   namestr, -1, -1, 1)
        || !ASN1_BIT_STRING_set(key, keybytes, sizeof(keybytes))
        || !ASN1_INTEGER_set_uint64(serial, (uint64_t)1))
        goto err;
    cid = OCSP_cert_id_new(EVP_sha256(), name, key, serial);
    if (!TEST_ptr(bs)
        || !TEST_ptr(thisupd)
        || !TEST_ptr(nextupd)
        || !TEST_ptr(cid)
        || !TEST_true(OCSP_basic_add1_status(bs, cid,
                                             V_OCSP_CERTSTATUS_UNKNOWN,
                                             0, ((void*)0), thisupd, nextupd)))
        goto err;
    bs_out = bs;
    bs = ((void*)0);
 err:
    ASN1_TIME_free(thisupd);
    ASN1_TIME_free(nextupd);
    ASN1_BIT_STRING_free(key);
    ASN1_INTEGER_free(serial);
    OCSP_CERTID_free(cid);
    OCSP_BASICRESP_free(bs);
    X509_NAME_free(name);
    return bs_out;
}
