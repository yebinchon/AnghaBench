#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int post_handshake_auth; int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
#define  SSL_PHA_EXT_RECEIVED 132 
#define  SSL_PHA_EXT_SENT 131 
#define  SSL_PHA_NONE 130 
#define  SSL_PHA_REQUESTED 129 
#define  SSL_PHA_REQUEST_PENDING 128 
 int /*<<< orphan*/  SSL_R_EXTENSION_NOT_RECEIVED ; 
 int /*<<< orphan*/  SSL_R_INVALID_CONFIG ; 
 int /*<<< orphan*/  SSL_R_NOT_SERVER ; 
 int /*<<< orphan*/  SSL_R_REQUEST_PENDING ; 
 int /*<<< orphan*/  SSL_R_REQUEST_SENT ; 
 int /*<<< orphan*/  SSL_R_STILL_IN_INIT ; 
 int /*<<< orphan*/  SSL_R_WRONG_SSL_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(SSL *ssl)
{
    if (!FUNC0(ssl)) {
        FUNC2(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_WRONG_SSL_VERSION);
        return 0;
    }
    if (!ssl->server) {
        FUNC2(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_NOT_SERVER);
        return 0;
    }

    if (!FUNC1(ssl)) {
        FUNC2(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_STILL_IN_INIT);
        return 0;
    }

    switch (ssl->post_handshake_auth) {
    case SSL_PHA_NONE:
        FUNC2(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_EXTENSION_NOT_RECEIVED);
        return 0;
    default:
    case SSL_PHA_EXT_SENT:
        FUNC2(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, ERR_R_INTERNAL_ERROR);
        return 0;
    case SSL_PHA_EXT_RECEIVED:
        break;
    case SSL_PHA_REQUEST_PENDING:
        FUNC2(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_REQUEST_PENDING);
        return 0;
    case SSL_PHA_REQUESTED:
        FUNC2(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_REQUEST_SENT);
        return 0;
    }

    ssl->post_handshake_auth = SSL_PHA_REQUEST_PENDING;

    /* checks verify_mode and algorithm_auth */
    if (!FUNC4(ssl)) {
        ssl->post_handshake_auth = SSL_PHA_EXT_RECEIVED; /* restore on error */
        FUNC2(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_INVALID_CONFIG);
        return 0;
    }

    FUNC3(ssl, 1);
    return 1;
}