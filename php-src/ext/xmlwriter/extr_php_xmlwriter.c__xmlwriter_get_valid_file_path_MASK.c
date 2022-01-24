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
typedef  int /*<<< orphan*/  zend_stat_t ;
struct TYPE_5__ {int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_1__ xmlURI ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC12(char *source, char *resolved_path, int resolved_path_len ) {
	xmlURI *uri;
	xmlChar *escsource;
	char *file_dest;
	int isFileUri = 0;

	uri = FUNC7();
	escsource = FUNC11((xmlChar *)source, (xmlChar *) ":");
	FUNC10(uri, (char *)escsource);
	FUNC8(escsource);

	if (uri->scheme != NULL) {
		/* absolute file uris - libxml only supports localhost or empty host */
		if (FUNC6(source, "file:///", 8) == 0) {
			if (source[sizeof("file:///") - 1] == '\0') {
				FUNC9(uri);
				return NULL;
			}
			isFileUri = 1;
#ifdef PHP_WIN32
			source += 8;
#else
			source += 7;
#endif
		} else if (FUNC6(source, "file://localhost/",17) == 0) {
			if (source[sizeof("file://localhost/") - 1] == '\0') {
				FUNC9(uri);
				return NULL;
			}

			isFileUri = 1;
#ifdef PHP_WIN32
			source += 17;
#else
			source += 16;
#endif
		}
	}

	if ((uri->scheme == NULL || isFileUri)) {
		char file_dirname[MAXPATHLEN];
		size_t dir_len;

		if (!FUNC0(source, resolved_path) && !FUNC1(source, resolved_path)) {
			FUNC9(uri);
			return NULL;
		}

		FUNC2(file_dirname, source, FUNC5(source));
		dir_len = FUNC3(file_dirname, FUNC5(source));

		if (dir_len > 0) {
			zend_stat_t buf;
			if (FUNC4(file_dirname, &buf) != 0) {
				FUNC9(uri);
				return NULL;
			}
		}

		file_dest = resolved_path;
	} else {
		file_dest = source;
	}

	FUNC9(uri);

	return file_dest;
}