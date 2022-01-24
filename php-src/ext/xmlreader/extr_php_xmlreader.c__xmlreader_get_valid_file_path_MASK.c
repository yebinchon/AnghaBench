#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_1__ xmlURI ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char *FUNC8(char *source, char *resolved_path, int resolved_path_len ) {
	xmlURI *uri;
	xmlChar *escsource;
	char *file_dest;
	int isFileUri = 0;

	uri = FUNC3();
	escsource = FUNC7((xmlChar *)source, (xmlChar *)":");
	FUNC6(uri, (const char *)escsource);
	FUNC4(escsource);

	if (uri->scheme != NULL) {
		/* absolute file uris - libxml only supports localhost or empty host */
		if (FUNC2(source, "file:///",8) == 0) {
			isFileUri = 1;
#ifdef PHP_WIN32
			source += 8;
#else
			source += 7;
#endif
		} else if (FUNC2(source, "file://localhost/",17) == 0) {
			isFileUri = 1;
#ifdef PHP_WIN32
			source += 17;
#else
			source += 16;
#endif
		}
	}

	file_dest = source;

	if ((uri->scheme == NULL || isFileUri)) {
		if (!FUNC0(source, resolved_path) && !FUNC1(source, resolved_path)) {
			FUNC5(uri);
			return NULL;
		}
		file_dest = resolved_path;
	}

	FUNC5(uri);

	return file_dest;
}