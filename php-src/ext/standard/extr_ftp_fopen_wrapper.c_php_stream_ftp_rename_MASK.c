#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int port; int /*<<< orphan*/ * path; int /*<<< orphan*/ * host; int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_1__ php_url ;
typedef  int /*<<< orphan*/  php_stream_wrapper ;
typedef  int /*<<< orphan*/  php_stream_context ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int REPORT_ERRORS ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(php_stream_wrapper *wrapper, const char *url_from, const char *url_to, int options, php_stream_context *context)
{
	php_stream *stream = NULL;
	php_url *resource_from = NULL, *resource_to = NULL;
	int result;
	char tmp_line[512];

	resource_from = FUNC7(url_from);
	resource_to = FUNC7(url_to);
	/* Must be same scheme (ftp/ftp or ftps/ftps), same host, and same port
		(or a 21/0 0/21 combination which is also "same")
	   Also require paths to/from */
	if (!resource_from ||
		!resource_to ||
		!resource_from->scheme ||
		!resource_to->scheme ||
		!FUNC8(resource_from->scheme, resource_to->scheme) ||
		!resource_from->host ||
		!resource_to->host ||
		!FUNC8(resource_from->host, resource_to->host) ||
		(resource_from->port != resource_to->port &&
		 resource_from->port * resource_to->port != 0 &&
		 resource_from->port + resource_to->port != 21) ||
		!resource_from->path ||
		!resource_to->path) {
		goto rename_errexit;
	}

	stream = FUNC3(wrapper, url_from, "r", 0, NULL, context, NULL, NULL, NULL, NULL);
	if (!stream) {
		if (options & REPORT_ERRORS) {
			FUNC2(NULL, E_WARNING, "Unable to connect to %s", FUNC1(resource_from->host));
		}
		goto rename_errexit;
	}

	/* Rename FROM */
	FUNC5(stream, "RNFR %s\r\n", (resource_from->path != NULL ? FUNC1(resource_from->path) : "/"));

	result = FUNC0(stream);
	if (result < 300 || result > 399) {
		if (options & REPORT_ERRORS) {
			FUNC2(NULL, E_WARNING, "Error Renaming file: %s", tmp_line);
		}
		goto rename_errexit;
	}

	/* Rename TO */
	FUNC5(stream, "RNTO %s\r\n", (resource_to->path != NULL ? FUNC1(resource_to->path) : "/"));

	result = FUNC0(stream);
	if (result < 200 || result > 299) {
		if (options & REPORT_ERRORS) {
			FUNC2(NULL, E_WARNING, "Error Renaming file: %s", tmp_line);
		}
		goto rename_errexit;
	}

	FUNC6(resource_from);
	FUNC6(resource_to);
	FUNC4(stream);
	return 1;

rename_errexit:
	if (resource_from) {
		FUNC6(resource_from);
	}
	if (resource_to) {
		FUNC6(resource_to);
	}
	if (stream) {
		FUNC4(stream);
	}
	return 0;
}