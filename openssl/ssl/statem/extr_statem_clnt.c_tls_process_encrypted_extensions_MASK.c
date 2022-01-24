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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  RAW_EXTENSION ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PROCESS_CONTINUE_READING ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_ENCRYPTED_EXTENSIONS ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static MSG_PROCESS_RETURN FUNC6(SSL *s, PACKET *pkt)
{
    PACKET extensions;
    RAW_EXTENSION *rawexts = NULL;

    if (!FUNC1(pkt, &extensions)
            || FUNC2(pkt) != 0) {
        FUNC3(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_ENCRYPTED_EXTENSIONS,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    if (!FUNC4(s, &extensions,
                                SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS, &rawexts,
                                NULL, 1)
            || !FUNC5(s, SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS,
                                         rawexts, NULL, 0, 1)) {
        /* SSLfatal() already called */
        goto err;
    }

    FUNC0(rawexts);
    return MSG_PROCESS_CONTINUE_READING;

 err:
    FUNC0(rawexts);
    return MSG_PROCESS_ERROR;
}