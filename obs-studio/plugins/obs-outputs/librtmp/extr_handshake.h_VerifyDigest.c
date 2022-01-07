
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CalculateDigest (unsigned int,int *,int const*,size_t,int *) ;
 int SHA256_DIGEST_LENGTH ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int
VerifyDigest(unsigned int digestPos, uint8_t *handshakeMessage, const uint8_t *key,
             size_t keyLen)
{
    uint8_t calcDigest[SHA256_DIGEST_LENGTH];

    CalculateDigest(digestPos, handshakeMessage, key, keyLen, calcDigest);

    return memcmp(&handshakeMessage[digestPos], calcDigest,
                  SHA256_DIGEST_LENGTH) == 0;
}
