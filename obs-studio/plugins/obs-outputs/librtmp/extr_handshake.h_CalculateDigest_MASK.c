#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int RTMP_SIG_SIZE ; 
 unsigned int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static void
FUNC2(unsigned int digestPos, uint8_t *handshakeMessage,
                const uint8_t *key, size_t keyLen, uint8_t *digest)
{
    const int messageLen = RTMP_SIG_SIZE - SHA256_DIGEST_LENGTH;
    uint8_t message[RTMP_SIG_SIZE - SHA256_DIGEST_LENGTH];

    FUNC1(message, handshakeMessage, digestPos);
    FUNC1(message + digestPos,
           &handshakeMessage[digestPos + SHA256_DIGEST_LENGTH],
           messageLen - digestPos);

    FUNC0(message, messageLen, key, keyLen, digest);
}