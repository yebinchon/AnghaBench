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
 int PHP_STREAM_MKDIR_RECURSIVE ; 
 int REPORT_ERRORS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 

__attribute__((used)) static int FUNC12(php_stream_wrapper *wrapper, const char *url, int mode, int options, php_stream_context *context)
{
	php_stream *stream = NULL;
	php_url *resource = NULL;
	int result, recursive = options & PHP_STREAM_MKDIR_RECURSIVE;
	char tmp_line[512];

	stream = FUNC6(wrapper, url, "r", 0, NULL, context, NULL, &resource, NULL, NULL);
	if (!stream) {
		if (options & REPORT_ERRORS) {
			FUNC5(NULL, E_WARNING, "Unable to connect to %s", url);
		}
		goto mkdir_errexit;
	}

	if (resource->path == NULL) {
		if (options & REPORT_ERRORS) {
			FUNC5(NULL, E_WARNING, "Invalid path provided in %s", url);
		}
		goto mkdir_errexit;
	}

	if (!recursive) {
		FUNC8(stream, "MKD %s\r\n", FUNC2(resource->path));
		result = FUNC0(stream);
    } else {
        /* we look for directory separator from the end of string, thus hopefully reducing our work load */
        char *p, *e, *buf;

        buf = FUNC4(FUNC2(resource->path), FUNC1(resource->path));
        e = buf + FUNC1(resource->path);

        /* find a top level directory we need to create */
        while ((p = FUNC11(buf, '/'))) {
			*p = '\0';
			FUNC8(stream, "CWD %s\r\n", FUNC10(buf) ? buf : "/");
			result = FUNC0(stream);
			if (result >= 200 && result <= 299) {
				*p = '/';
				break;
			}
		}

		FUNC8(stream, "MKD %s\r\n", FUNC10(buf) ? buf : "/");
		result = FUNC0(stream);

		if (result >= 200 && result <= 299) {
			if (!p) {
				p = buf;
			}
			/* create any needed directories if the creation of the 1st directory worked */
			while (p != e) {
				if (*p == '\0' && *(p + 1) != '\0') {
					*p = '/';
					FUNC8(stream, "MKD %s\r\n", buf);
					result = FUNC0(stream);
					if (result < 200 || result > 299) {
						if (options & REPORT_ERRORS) {
							FUNC5(NULL, E_WARNING, "%s", tmp_line);
						}
						break;
					}
				}
				++p;
			}
		}

		FUNC3(buf);
    }

	FUNC9(resource);
	FUNC7(stream);

	if (result < 200 || result > 299) {
		/* Failure */
		return 0;
	}

	return 1;

mkdir_errexit:
	if (resource) {
		FUNC9(resource);
	}
	if (stream) {
		FUNC7(stream);
	}
	return 0;
}