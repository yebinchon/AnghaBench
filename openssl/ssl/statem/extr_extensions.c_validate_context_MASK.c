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
 unsigned int SSL_EXT_DTLS_ONLY ; 
 unsigned int SSL_EXT_TLS_ONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(SSL *s, unsigned int extctx, unsigned int thisctx)
{
    /* Check we're allowed to use this extension in this context */
    if ((thisctx & extctx) == 0)
        return 0;

    if (FUNC0(s)) {
        if ((extctx & SSL_EXT_TLS_ONLY) != 0)
            return 0;
    } else if ((extctx & SSL_EXT_DTLS_ONLY) != 0) {
        return 0;
    }

    return 1;
}