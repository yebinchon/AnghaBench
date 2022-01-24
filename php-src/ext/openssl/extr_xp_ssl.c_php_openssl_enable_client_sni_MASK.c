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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_3__ {char* url_name; int /*<<< orphan*/  ssl_handle; } ;
typedef  TYPE_1__ php_openssl_netstream_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(php_stream *stream, php_openssl_netstream_data_t *sslsock) /* {{{ */
{
	zval *val;
	char *sni_server_name;

	/* If SNI is explicitly disabled we're finished here */
	if (FUNC0("SNI_enabled") && !FUNC3(val)) {
		return;
	}

	sni_server_name = sslsock->url_name;

	FUNC1("peer_name", sni_server_name);

	if (sni_server_name) {
		FUNC2(sslsock->ssl_handle, sni_server_name);
	}
}