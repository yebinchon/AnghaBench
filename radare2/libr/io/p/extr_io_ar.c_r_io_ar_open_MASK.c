#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  r_io_plugin_ar ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static RIODesc *FUNC5(RIO *io, const char *file, int rw, int mode) {
	RIODesc *res = NULL;
	char *url = FUNC3 (file);
	char *arname = FUNC4 (url, "://") + 3;
	char *filename = FUNC4 (arname, "//");
	if (filename) {
		*filename = 0;
		filename += 2;
	}

	RBuffer *b = FUNC0 (arname, filename);
	if (b) {
		res = FUNC2 (io, &r_io_plugin_ar, filename, rw, mode, b);
	}
	FUNC1 (url);
	return res;
}