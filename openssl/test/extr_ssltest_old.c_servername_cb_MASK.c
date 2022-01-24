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
 int SSL_TLSEXT_ERR_NOACK ; 
 int SSL_TLSEXT_ERR_OK ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 int /*<<< orphan*/  bio_stdout ; 
 int /*<<< orphan*/ * s_ctx2 ; 
 int /*<<< orphan*/ * sn_server2 ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(SSL *s, int *ad, void *arg)
{
    const char *servername = FUNC1(s, TLSEXT_NAMETYPE_host_name);
    if (sn_server2 == NULL) {
        FUNC0(bio_stdout, "Servername 2 is NULL\n");
        return SSL_TLSEXT_ERR_NOACK;
    }

    if (servername) {
        if (s_ctx2 != NULL && sn_server2 != NULL &&
            !FUNC3(servername, sn_server2)) {
            FUNC0(bio_stdout, "Switching server context.\n");
            FUNC2(s, s_ctx2);
        }
    }
    return SSL_TLSEXT_ERR_OK;
}