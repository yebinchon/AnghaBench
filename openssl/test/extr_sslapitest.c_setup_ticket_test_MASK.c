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
typedef  int /*<<< orphan*/  sess_id_ctx ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  SSL_OP_NO_TICKET ; 
 int SSL_SESS_CACHE_CLIENT ; 
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  new_cachesession_cb ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC9(int stateful, int idx, SSL_CTX **sctx,
                             SSL_CTX **cctx)
{
    int sess_id_ctx = 1;

    if (!FUNC5(FUNC8(FUNC7(), FUNC6(),
                                       TLS1_VERSION, 0, sctx,
                                       cctx, cert, privkey))
            || !FUNC5(FUNC1(*sctx, idx))
            || !FUNC5(FUNC4(*sctx,
                                                         (void *)&sess_id_ctx,
                                                         sizeof(sess_id_ctx))))
        return 0;

    if (stateful)
        FUNC2(*sctx, SSL_OP_NO_TICKET);

    FUNC3(*cctx, SSL_SESS_CACHE_CLIENT
                                          | SSL_SESS_CACHE_NO_INTERNAL_STORE);
    FUNC0(*cctx, new_cachesession_cb);

    return 1;
}