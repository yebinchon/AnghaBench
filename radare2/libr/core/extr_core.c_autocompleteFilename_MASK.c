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
struct TYPE_3__ {char* data; } ;
typedef  int /*<<< orphan*/  RLineCompletion ;
typedef  TYPE_1__ RLineBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  R_SYS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,int) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static void FUNC8(RLineCompletion *completion, RLineBuffer *buf, char **extra_paths, int narg) {
	char *args = NULL, *input = NULL;
	int n = 0, i = 0;
	char *pipe = FUNC7 (buf->data, '>');
	if (pipe) {
		args = FUNC2 (pipe + 1);
	} else {
		args = FUNC2 (buf->data);
	}
	if (!args) {
		goto out;
	}

	n = FUNC6 (args);
	if (n < narg) {
		goto out;
	}

	input = FUNC2 (FUNC5 (args, narg));
	if (!input) {
		goto out;
	}
	const char *tinput = FUNC4 (input);

	FUNC0 (completion, buf->data, tinput);

	if (input[0] == '/' || input[0] == '.' || !extra_paths) {
		goto out;
	}

	for (i = 0; extra_paths[i]; i ++) {
		char *s = FUNC3 ("%s%s%s", extra_paths[i], R_SYS_DIR, tinput);
		if (!s) {
			break;
		}
		FUNC0 (completion, buf->data, s);
	}
out:
	FUNC1 (args);
	FUNC1 (input);
}