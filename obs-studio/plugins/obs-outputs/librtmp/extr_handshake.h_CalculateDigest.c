
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HMACsha256 (int *,int const,int const*,size_t,int *) ;
 int RTMP_SIG_SIZE ;
 unsigned int SHA256_DIGEST_LENGTH ;
 int memcpy (int *,int *,int const) ;

__attribute__((used)) static void
CalculateDigest(unsigned int digestPos, uint8_t *handshakeMessage,
                const uint8_t *key, size_t keyLen, uint8_t *digest)
{
    const int messageLen = RTMP_SIG_SIZE - SHA256_DIGEST_LENGTH;
    uint8_t message[RTMP_SIG_SIZE - SHA256_DIGEST_LENGTH];

    memcpy(message, handshakeMessage, digestPos);
    memcpy(message + digestPos,
           &handshakeMessage[digestPos + SHA256_DIGEST_LENGTH],
           messageLen - digestPos);

    HMACsha256(message, messageLen, key, keyLen, digest);
}
