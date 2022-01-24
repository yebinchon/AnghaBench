#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* wrapper; } ;
typedef  TYPE_2__ php_stream ;
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {scalar_t__ is_url; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 char* FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 TYPE_2__* FUNC11 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static long FUNC13(X509_STORE *cert_store, const char *cafile) /* {{{ */
{
	php_stream *stream;
	X509 *cert;
	BIO *buffer;
	int buffer_active = 0;
	char *line = NULL;
	size_t line_len;
	long certs_added = 0;

	stream = FUNC11(cafile, "rb", 0, NULL);

	if (stream == NULL) {
		FUNC8(E_WARNING, "failed loading cafile stream: `%s'", cafile);
		return 0;
	} else if (stream->wrapper->is_url) {
		FUNC9(stream);
		FUNC8(E_WARNING, "remote cafile streams are disabled for security purposes");
		return 0;
	}

	cert_start: {
		line = FUNC10(stream, NULL, 0, &line_len);
		if (line == NULL) {
			goto stream_complete;
		} else if (!FUNC12(line, "-----BEGIN CERTIFICATE-----\n") ||
			!FUNC12(line, "-----BEGIN CERTIFICATE-----\r\n")
		) {
			buffer = FUNC1(FUNC3());
			buffer_active = 1;
			goto cert_line;
		} else {
			FUNC7(line);
			goto cert_start;
		}
	}

	cert_line: {
		FUNC2(buffer, line);
		FUNC7(line);
		line = FUNC10(stream, NULL, 0, &line_len);
		if (line == NULL) {
			goto stream_complete;
		} else if (!FUNC12(line, "-----END CERTIFICATE-----") ||
			!FUNC12(line, "-----END CERTIFICATE-----\n") ||
			!FUNC12(line, "-----END CERTIFICATE-----\r\n")
		) {
			goto add_cert;
		} else {
			goto cert_line;
		}
	}

	add_cert: {
		FUNC2(buffer, line);
		FUNC7(line);
		cert = FUNC4(buffer, NULL, 0, NULL);
		FUNC0(buffer);
		buffer_active = 0;
		if (cert && FUNC5(cert_store, cert)) {
			++certs_added;
			FUNC6(cert);
		}
		goto cert_start;
	}

	stream_complete: {
		FUNC9(stream);
		if (buffer_active == 1) {
			FUNC0(buffer);
		}
	}

	if (certs_added == 0) {
		FUNC8(E_WARNING, "no valid certs found cafile stream: `%s'", cafile);
	}

	return certs_added;
}