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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  psk_key ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static unsigned int FUNC3(SSL *ssl, const char *identity,
                                        unsigned char *psk,
                                        unsigned int max_psk_len)
{
    unsigned int psk_len = 0;

    if (FUNC2(identity, "Client_identity") != 0) {
        FUNC0(bio_err, "server: PSK error: client identity not found\n");
        return 0;
    }
    psk_len = FUNC1(psk_key, psk, max_psk_len);
    return psk_len;
}