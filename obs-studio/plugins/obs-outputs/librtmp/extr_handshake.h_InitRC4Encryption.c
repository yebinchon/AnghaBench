
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int RC4_handle ;
typedef int HMAC_CTX ;


 int HMAC_crunch (int ,int *,int) ;
 int HMAC_finish (int ,int *,...) ;
 int HMAC_setup (int ,int *,int) ;
 int RC4_alloc (int *) ;
 int RC4_setkey (int ,int,int *) ;
 int RTMP_LOGDEBUG ;
 int RTMP_Log (int ,char*) ;
 int RTMP_LogHex (int ,int *,int) ;
 int SHA256_DIGEST_LENGTH ;

__attribute__((used)) static void InitRC4Encryption
(uint8_t * secretKey,
 uint8_t * pubKeyIn,
 uint8_t * pubKeyOut, RC4_handle *rc4keyIn, RC4_handle *rc4keyOut)
{
    uint8_t digest[SHA256_DIGEST_LENGTH];

    unsigned int digestLen = 0;

    HMAC_CTX ctx;

    RC4_alloc(rc4keyIn);
    RC4_alloc(rc4keyOut);

    HMAC_setup(ctx, secretKey, 128);
    HMAC_crunch(ctx, pubKeyIn, 128);



    HMAC_finish(ctx, digest, digestLen);


    RTMP_Log(RTMP_LOGDEBUG, "RC4 Out Key: ");
    RTMP_LogHex(RTMP_LOGDEBUG, digest, 16);

    RC4_setkey(*rc4keyOut, 16, digest);

    HMAC_setup(ctx, secretKey, 128);
    HMAC_crunch(ctx, pubKeyOut, 128);



    HMAC_finish(ctx, digest, digestLen);


    RTMP_Log(RTMP_LOGDEBUG, "RC4 In Key: ");
    RTMP_LogHex(RTMP_LOGDEBUG, digest, 16);

    RC4_setkey(*rc4keyIn, 16, digest);
}
