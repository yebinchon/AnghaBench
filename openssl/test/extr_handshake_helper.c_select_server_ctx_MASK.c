#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* servername; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ HANDSHAKE_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* SSL_TEST_SERVERNAME_SERVER1 ; 
 void* SSL_TEST_SERVERNAME_SERVER2 ; 
 int SSL_TLSEXT_ERR_ALERT_FATAL ; 
 int SSL_TLSEXT_ERR_NOACK ; 
 int SSL_TLSEXT_ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 int /*<<< orphan*/  ex_data_idx ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(SSL *s, void *arg, int ignore)
{
    const char *servername = FUNC3(s, TLSEXT_NAMETYPE_host_name);
    HANDSHAKE_EX_DATA *ex_data =
        (HANDSHAKE_EX_DATA*)(FUNC2(s, ex_data_idx));

    if (servername == NULL) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return SSL_TLSEXT_ERR_NOACK;
    }

    if (FUNC6(servername, "server2") == 0) {
        SSL_CTX *new_ctx = (SSL_CTX*)arg;
        FUNC4(s, new_ctx);
        /*
         * Copy over all the SSL_CTX options - reasonable behavior
         * allows testing of cases where the options between two
         * contexts differ/conflict
         */
        FUNC1(s, 0xFFFFFFFFL);
        FUNC5(s, FUNC0(new_ctx));

        ex_data->servername = SSL_TEST_SERVERNAME_SERVER2;
        return SSL_TLSEXT_ERR_OK;
    } else if (FUNC6(servername, "server1") == 0) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return SSL_TLSEXT_ERR_OK;
    } else if (ignore) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return SSL_TLSEXT_ERR_NOACK;
    } else {
        /* Don't set an explicit alert, to test library defaults. */
        return SSL_TLSEXT_ERR_ALERT_FATAL;
    }
}