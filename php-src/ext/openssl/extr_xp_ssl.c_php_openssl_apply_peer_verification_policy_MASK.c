#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_4__ {scalar_t__ abstract; } ;
typedef  TYPE_1__ php_stream ;
struct TYPE_5__ {int is_client; char* url_name; } ;
typedef  TYPE_2__ php_openssl_netstream_data_t ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int SUCCESS ; 
#define  X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT 129 
#define  X509_V_OK 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(SSL *ssl, X509 *peer, php_stream *stream) /* {{{ */
{
	zval *val = NULL;
	zval *peer_fingerprint;
	char *peer_name = NULL;
	int err,
		must_verify_peer,
		must_verify_peer_name,
		must_verify_fingerprint;

	php_openssl_netstream_data_t *sslsock = (php_openssl_netstream_data_t*)stream->abstract;

	must_verify_peer = FUNC0("verify_peer")
		? FUNC9(val)
		: sslsock->is_client;

	must_verify_peer_name = FUNC0("verify_peer_name")
		? FUNC9(val)
		: sslsock->is_client;

	must_verify_fingerprint = FUNC0("peer_fingerprint");
	peer_fingerprint = val;

	if ((must_verify_peer || must_verify_peer_name || must_verify_fingerprint) && peer == NULL) {
		FUNC5(NULL, E_WARNING, "Could not get peer certificate");
		return FAILURE;
	}

	/* Verify the peer against using CA file/path settings */
	if (must_verify_peer) {
		err = FUNC2(ssl);
		switch (err) {
			case X509_V_OK:
				/* fine */
				break;
			case X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT:
				if (FUNC0("allow_self_signed") && FUNC9(val)) {
					/* allowed */
					break;
				}
				/* not allowed, so fall through */
			default:
				FUNC5(NULL, E_WARNING,
						"Could not verify peer: code:%d %s",
						err,
						FUNC3(err)
				);
				return FAILURE;
		}
	}

	/* If a peer_fingerprint match is required this trumps peer and peer_name verification */
	if (must_verify_fingerprint) {
		if (FUNC4(peer_fingerprint) == IS_STRING || FUNC4(peer_fingerprint) == IS_ARRAY) {
			if (!FUNC8(peer, peer_fingerprint)) {
				FUNC5(NULL, E_WARNING,
					"peer_fingerprint match failure"
				);
				return FAILURE;
			}
		} else {
			FUNC5(NULL, E_WARNING,
				"Expected peer fingerprint must be a string or an array"
			);
			return FAILURE;
		}
	}

	/* verify the host name presented in the peer certificate */
	if (must_verify_peer_name) {
		FUNC1("peer_name", peer_name);

		/* If no peer name was specified we use the autodetected url name in client environments */
		if (peer_name == NULL && sslsock->is_client) {
			peer_name = sslsock->url_name;
		}

		if (peer_name) {
			if (FUNC7(peer, peer_name)) {
				return SUCCESS;
			} else if (FUNC6(peer, peer_name)) {
				return SUCCESS;
			} else {
				return FAILURE;
			}
		} else {
			return FAILURE;
		}
	}

	return SUCCESS;
}