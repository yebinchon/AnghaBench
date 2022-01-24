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
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(SSL *sssl, SSL *cssl)
{
    FUNC2(sssl, SSL_VERIFY_PEER, NULL);
    if (!FUNC6(FUNC3(sssl)))
        return 0;

    /* Start handshake on the server and client */
    if (!FUNC4(FUNC0(sssl), 1)
            || !FUNC5(FUNC1(cssl, NULL, 0), 0)
            || !FUNC5(FUNC1(sssl, NULL, 0), 0)
            || !FUNC6(FUNC7(sssl, cssl,
                                                SSL_ERROR_NONE)))
        return 0;

    return 1;
}