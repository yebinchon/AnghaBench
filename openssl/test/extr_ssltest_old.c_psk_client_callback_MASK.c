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

/* Variables and functions */
 int FUNC0 (char*,unsigned int,char*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  psk_key ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static unsigned int FUNC3(SSL *ssl, const char *hint,
                                        char *identity,
                                        unsigned int max_identity_len,
                                        unsigned char *psk,
                                        unsigned int max_psk_len)
{
    int ret;
    unsigned int psk_len = 0;

    ret = FUNC0(identity, max_identity_len, "Client_identity");
    if (ret < 0)
        goto out_err;
    if (debug)
        FUNC1(stderr, "client: created identity '%s' len=%d\n", identity,
                ret);
    ret = FUNC2(psk_key, psk, max_psk_len);
    if (ret < 0)
        goto out_err;
    psk_len = ret;
 out_err:
    return psk_len;
}