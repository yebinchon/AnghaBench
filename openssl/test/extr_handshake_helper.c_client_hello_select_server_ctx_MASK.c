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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const**,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 int /*<<< orphan*/  TLSEXT_TYPE_server_name ; 
 int /*<<< orphan*/  ex_data_idx ; 
 size_t FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*,char*,size_t) ; 

__attribute__((used)) static int FUNC8(SSL *s, void *arg, int ignore)
{
    const char *servername;
    const unsigned char *p;
    size_t len, remaining;
    HANDSHAKE_EX_DATA *ex_data =
        (HANDSHAKE_EX_DATA*)(FUNC3(s, ex_data_idx));

    /*
     * The server_name extension was given too much extensibility when it
     * was written, so parsing the normal case is a bit complex.
     */
    if (!FUNC2(s, TLSEXT_TYPE_server_name, &p,
                                   &remaining) ||
        remaining <= 2)
        return 0;
    /* Extract the length of the supplied list of names. */
    len = (*(p++) << 8);
    len += *(p++);
    if (len + 2 != remaining)
        return 0;
    remaining = len;
    /*
     * The list in practice only has a single element, so we only consider
     * the first one.
     */
    if (remaining == 0 || *p++ != TLSEXT_NAMETYPE_host_name)
        return 0;
    remaining--;
    /* Now we can finally pull out the byte array with the actual hostname. */
    if (remaining <= 2)
        return 0;
    len = (*(p++) << 8);
    len += *(p++);
    if (len + 2 > remaining)
        return 0;
    remaining = len;
    servername = (const char *)p;

    if (len == FUNC6("server2") && FUNC7(servername, "server2", len) == 0) {
        SSL_CTX *new_ctx = arg;
        FUNC4(s, new_ctx);
        /*
         * Copy over all the SSL_CTX options - reasonable behavior
         * allows testing of cases where the options between two
         * contexts differ/conflict
         */
        FUNC1(s, 0xFFFFFFFFL);
        FUNC5(s, FUNC0(new_ctx));

        ex_data->servername = SSL_TEST_SERVERNAME_SERVER2;
        return 1;
    } else if (len == FUNC6("server1") &&
               FUNC7(servername, "server1", len) == 0) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return 1;
    } else if (ignore) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return 1;
    }
    return 0;
}