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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const**,unsigned int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char const* alpn_client ; 
 unsigned char const* alpn_expected ; 
 int /*<<< orphan*/ * alpn_selected ; 
 unsigned char const* alpn_server ; 
 unsigned char const* alpn_server2 ; 
 int /*<<< orphan*/  bio_stdout ; 
 scalar_t__ FUNC5 (unsigned char const*,unsigned char const*,unsigned int) ; 
 scalar_t__ s_ctx2 ; 
 unsigned int FUNC6 (unsigned char const*) ; 

__attribute__((used)) static int FUNC7(SSL *client, SSL *server)
{
    const unsigned char *client_proto, *server_proto;
    unsigned int client_proto_len = 0, server_proto_len = 0;
    FUNC3(client, &client_proto, &client_proto_len);
    FUNC3(server, &server_proto, &server_proto_len);

    FUNC2(alpn_selected);
    alpn_selected = NULL;

    if (client_proto_len != server_proto_len) {
        FUNC0(bio_stdout, "ALPN selected protocols differ!\n");
        goto err;
    }

    if (client_proto != NULL &&
        FUNC5(client_proto, server_proto, client_proto_len) != 0) {
        FUNC0(bio_stdout, "ALPN selected protocols differ!\n");
        goto err;
    }

    if (client_proto_len > 0 && alpn_expected == NULL) {
        FUNC0(bio_stdout, "ALPN unexpectedly negotiated\n");
        goto err;
    }

    if (alpn_expected != NULL &&
        (client_proto_len != FUNC6(alpn_expected) ||
         FUNC5(client_proto, alpn_expected, client_proto_len) != 0)) {
        FUNC0(bio_stdout,
                   "ALPN selected protocols not equal to expected protocol: %s\n",
                   alpn_expected);
        goto err;
    }

    return 0;

 err:
    FUNC0(bio_stdout, "ALPN results: client: '");
    FUNC1(bio_stdout, client_proto, client_proto_len);
    FUNC0(bio_stdout, "', server: '");
    FUNC1(bio_stdout, server_proto, server_proto_len);
    FUNC0(bio_stdout, "'\n");
    FUNC0(bio_stdout, "ALPN configured: client: '%s', server: '",
                   alpn_client);
    if (FUNC4(server) == s_ctx2) {
        FUNC0(bio_stdout, "%s'\n",
                   alpn_server2);
    } else {
        FUNC0(bio_stdout, "%s'\n",
                   alpn_server);
    }
    return -1;
}