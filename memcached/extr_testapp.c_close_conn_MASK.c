#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sock; scalar_t__ ssl_ctx; scalar_t__ ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* con ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5() {
    if (con == NULL) return;
#ifdef TLS
    if (con->ssl) {
        SSL_shutdown(con->ssl);
        SSL_free(con->ssl);
    }
    if (con->ssl_ctx)
        SSL_CTX_free(con->ssl_ctx);
#endif
    if (con->sock > 0) FUNC3(con->sock);
    FUNC4(con);
    con = NULL;
}