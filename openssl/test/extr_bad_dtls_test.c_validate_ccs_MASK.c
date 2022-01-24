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
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,char**) ; 
 unsigned int DTLS1_BAD_VER ; 
 scalar_t__ DTLS1_RT_HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned int SSL3_MT_CCS ; 
 unsigned int SSL3_RT_CHANGE_CIPHER_SPEC ; 
 unsigned int SSL3_RT_HANDSHAKE ; 

__attribute__((used)) static int FUNC5(BIO *wbio)
{
    PACKET pkt;
    long len;
    unsigned char *data;
    unsigned int u;

    len = FUNC0(wbio, (char **)&data);
    if (!FUNC1(&pkt, data, len))
        return 0;

    /* Check record header type */
    if (!FUNC3(&pkt, &u) || u != SSL3_RT_CHANGE_CIPHER_SPEC)
        return 0;
    /* Version */
    if (!FUNC4(&pkt, &u) || u != DTLS1_BAD_VER)
        return 0;
    /* Skip the rest of the record header */
    if (!FUNC2(&pkt, DTLS1_RT_HEADER_LENGTH - 3))
        return 0;

    /* Check ChangeCipherSpec message */
    if (!FUNC3(&pkt, &u) || u != SSL3_MT_CCS)
        return 0;
    /* A DTLS1_BAD_VER ChangeCipherSpec also contains the
     * handshake sequence number (which is 2 here) */
    if (!FUNC4(&pkt, &u) || u != 0x0002)
        return 0;

    /* Now check the Finished packet */
    if (!FUNC3(&pkt, &u) || u != SSL3_RT_HANDSHAKE)
        return 0;
    if (!FUNC4(&pkt, &u) || u != DTLS1_BAD_VER)
        return 0;

    /* Check epoch is now 1 */
    if (!FUNC4(&pkt, &u) || u != 0x0001)
        return 0;

    /* That'll do for now. If OpenSSL accepted *our* Finished packet
     * then it's evidently remembered that DTLS1_BAD_VER doesn't
     * include the handshake header in the MAC. There's not a lot of
     * point in implementing decryption here, just to check that it
     * continues to get it right for one more packet. */

    return 1;
}