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
 unsigned int SSL3_VERSION ; 
 int SSL_AD_INTERNAL_ERROR ; 
 int SSL_AD_PROTOCOL_VERSION ; 
 int SSL_AD_UNRECOGNIZED_NAME ; 
 int SSL_CLIENT_HELLO_ERROR ; 
 int SSL_CLIENT_HELLO_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char const**) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_1_VERSION ; 
 unsigned int TLS1_2_VERSION ; 
 int FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(SSL *s, int *al, void *arg)
{
    int ret;
    unsigned int v;
    const unsigned char *p;

    v = FUNC2(s);
    if (v > TLS1_2_VERSION || v < SSL3_VERSION) {
        *al = SSL_AD_PROTOCOL_VERSION;
        return SSL_CLIENT_HELLO_ERROR;
    }
    (void)FUNC4(s, &p);
    if (p == NULL ||
        FUNC3(s, &p) == 0 ||
        FUNC0(s, &p) == 0 ||
        FUNC1(s, &p) == 0) {
        *al = SSL_AD_INTERNAL_ERROR;
        return SSL_CLIENT_HELLO_ERROR;
    }
    ret = FUNC6(s, arg, 0);
    FUNC5(s, TLS1_1_VERSION);
    if (!ret) {
        *al = SSL_AD_UNRECOGNIZED_NAME;
        return SSL_CLIENT_HELLO_ERROR;
    }
    return SSL_CLIENT_HELLO_SUCCESS;
}