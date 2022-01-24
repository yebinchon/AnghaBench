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
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int SSL_SESS_CACHE_NO_INTERNAL ; 
 int SSL_SESS_CACHE_SERVER ; 
 int /*<<< orphan*/  add_session ; 
 int /*<<< orphan*/  del_session ; 
 int /*<<< orphan*/  get_session ; 

__attribute__((used)) static void FUNC4(SSL_CTX *sctx)
{
    FUNC3(sctx,
                                   SSL_SESS_CACHE_NO_INTERNAL |
                                   SSL_SESS_CACHE_SERVER);
    FUNC1(sctx, add_session);
    FUNC0(sctx, get_session);
    FUNC2(sctx, del_session);
}