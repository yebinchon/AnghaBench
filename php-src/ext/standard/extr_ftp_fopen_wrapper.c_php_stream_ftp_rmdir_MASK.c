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
struct TYPE_4__ {int /*<<< orphan*/ * path; } ;
typedef  TYPE_1__ php_url ;
typedef  int /*<<< orphan*/  php_stream_wrapper ;
typedef  int /*<<< orphan*/  php_stream_context ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int REPORT_ERRORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(php_stream_wrapper *wrapper, const char *url, int options, php_stream_context *context)
{
	php_stream *stream = NULL;
	php_url *resource = NULL;
	int result;
	char tmp_line[512];

	stream = FUNC3(wrapper, url, "r", 0, NULL, context, NULL, &resource, NULL, NULL);
	if (!stream) {
		if (options & REPORT_ERRORS) {
			FUNC2(NULL, E_WARNING, "Unable to connect to %s", url);
		}
		goto rmdir_errexit;
	}

	if (resource->path == NULL) {
		if (options & REPORT_ERRORS) {
			FUNC2(NULL, E_WARNING, "Invalid path provided in %s", url);
		}
		goto rmdir_errexit;
	}

	FUNC5(stream, "RMD %s\r\n", FUNC1(resource->path));
	result = FUNC0(stream);

	if (result < 200 || result > 299) {
		if (options & REPORT_ERRORS) {
			FUNC2(NULL, E_WARNING, "%s", tmp_line);
		}
		goto rmdir_errexit;
	}

	FUNC6(resource);
	FUNC4(stream);

	return 1;

rmdir_errexit:
	if (resource) {
		FUNC6(resource);
	}
	if (stream) {
		FUNC4(stream);
	}
	return 0;
}