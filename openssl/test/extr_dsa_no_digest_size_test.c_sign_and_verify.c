
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char EVP_PKEY_CTX ;
typedef unsigned char EVP_PKEY ;


 int BN_num_bytes (int ) ;
 int DSA_get0_q (int ) ;
 int DSA_verify (int ,unsigned char*,int,unsigned char*,size_t,int ) ;
 int EVP_PKEY_CTX_free (unsigned char*) ;
 unsigned char* EVP_PKEY_CTX_new (unsigned char*,int *) ;
 int EVP_PKEY_free (unsigned char*) ;
 unsigned char* EVP_PKEY_new () ;
 int EVP_PKEY_set1_DSA (unsigned char*,int ) ;
 int EVP_PKEY_sign (unsigned char*,unsigned char*,size_t*,unsigned char*,int) ;
 int EVP_PKEY_sign_init (unsigned char*) ;
 int EVP_PKEY_verify (unsigned char*,unsigned char*,size_t,unsigned char*,int) ;
 int EVP_PKEY_verify_init (unsigned char*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int RAND_bytes (unsigned char*,int) ;
 int TEST_error (char*,int) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (unsigned char*) ;
 int dsakey ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int sign_and_verify(int len)
{





    size_t sigLength;
    int digestlen = BN_num_bytes(DSA_get0_q(dsakey));
    int ok = 0;

    unsigned char *dataToSign = OPENSSL_malloc(len);
    unsigned char *paddedData = OPENSSL_malloc(digestlen);
    unsigned char *signature = ((void*)0);
    EVP_PKEY_CTX *ctx = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);

    if (!TEST_ptr(dataToSign) ||
        !TEST_ptr(paddedData) ||
        !TEST_int_eq(RAND_bytes(dataToSign, len), 1))
        goto end;

    memset(paddedData, 0, digestlen);
    if (len > digestlen)
        memcpy(paddedData, dataToSign, digestlen);
    else
        memcpy(paddedData + digestlen - len, dataToSign, len);

    if (!TEST_ptr(pkey = EVP_PKEY_new()))
        goto end;
    EVP_PKEY_set1_DSA(pkey, dsakey);

    if (!TEST_ptr(ctx = EVP_PKEY_CTX_new(pkey, ((void*)0))))
        goto end;
    if (!TEST_int_eq(EVP_PKEY_sign_init(ctx), 1))
        goto end;

    if (EVP_PKEY_sign(ctx, ((void*)0), &sigLength, dataToSign, len) != 1) {
        TEST_error("Failed to get signature length, len=%d", len);
        goto end;
    }

    if (!TEST_ptr(signature = OPENSSL_malloc(sigLength)))
        goto end;

    if (EVP_PKEY_sign(ctx, signature, &sigLength, dataToSign, len) != 1) {
        TEST_error("Failed to sign, len=%d", len);
        goto end;
    }


    if (!TEST_int_eq(EVP_PKEY_verify_init(ctx), 1))
        goto end;


    if (EVP_PKEY_verify(ctx, signature, sigLength, dataToSign, len) != 1) {
        TEST_error("EVP verify with unpadded length %d failed\n", len);
        goto end;
    }


    if (EVP_PKEY_verify(ctx, signature, sigLength, paddedData, digestlen) != 1) {
        TEST_error("EVP verify with length %d failed\n", len);
        goto end;
    }


    if (DSA_verify(0, dataToSign, len, signature, sigLength, dsakey) != 1) {
        TEST_error("Verification with unpadded data failed, len=%d", len);
        goto end;
    }

    if (DSA_verify(0, paddedData, digestlen, signature, sigLength, dsakey) != 1) {
        TEST_error("verify with length %d failed\n", len);
        goto end;
    }

    ok = 1;
end:
    EVP_PKEY_CTX_free(ctx);
    EVP_PKEY_free(pkey);

    OPENSSL_free(signature);
    OPENSSL_free(paddedData);
    OPENSSL_free(dataToSign);

    return ok;
}
