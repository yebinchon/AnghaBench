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

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (long) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,long) ; 

__attribute__((used)) static char *FUNC6(const char *file) {
	int ret, fd;
	char *text;
	long sz;
	if (!file || !*file)
		return NULL;
	fd = FUNC4 (file, O_RDONLY);
	if (fd == -1) {
		return NULL;
	}
	sz = FUNC2 (fd, 0, SEEK_END);
	if (sz < 0){
		FUNC0 (fd);
		return NULL;
	}
	FUNC2 (fd, 0, SEEK_SET);
	text = FUNC3 (sz + 1);
	if (!text) {
		FUNC0 (fd);
		return NULL;
	}
	ret = FUNC5 (fd, text, sz);
	if (ret != sz) {
		FUNC1 (text);
		text = NULL;
	} else {
		text[sz] = 0;
	}
	FUNC0 (fd);
	return text;
}