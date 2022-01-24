#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;
struct TYPE_6__ {unsigned int sni_cert_count; TYPE_1__* sni_certs; } ;
typedef  TYPE_3__ php_openssl_netstream_data_t ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int SSL_TLSEXT_ERR_NOACK ; 
 int SSL_TLSEXT_ERR_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(SSL *ssl_handle, int *al, void *arg) /* {{{ */
{
	php_stream *stream;
	php_openssl_netstream_data_t *sslsock;
	unsigned i;
	const char *server_name;

	server_name = FUNC1(ssl_handle, TLSEXT_NAMETYPE_host_name);

	if (!server_name) {
		return SSL_TLSEXT_ERR_NOACK;
	}

	stream = (php_stream*)FUNC0(ssl_handle, FUNC3());
	sslsock = (php_openssl_netstream_data_t*)stream->abstract;

	if (!(sslsock->sni_cert_count && sslsock->sni_certs)) {
		return SSL_TLSEXT_ERR_NOACK;
	}

	for (i=0; i < sslsock->sni_cert_count; i++) {
		if (FUNC4(server_name, sslsock->sni_certs[i].name)) {
			FUNC2(ssl_handle, sslsock->sni_certs[i].ctx);
			return SSL_TLSEXT_ERR_OK;
		}
	}

	return SSL_TLSEXT_ERR_NOACK;
}