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
struct TYPE_3__ {int /*<<< orphan*/  file; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ TextLog ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ *,int*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5 (TextLog T, const char *str) {
	char *res, *ptr2;
	char *ptr = FUNC3 (str);
	char *uri = FUNC2 ("http://%s:%s/%s%s", T.host, T.port, T.file, ptr? ptr: str);
	int len;
	FUNC0 (ptr);
	ptr2 = FUNC1 (uri, NULL, &len);
	FUNC0 (uri);
	if (ptr2) {
		ptr2[len] = 0;
		res = FUNC4 (ptr2, "\n\n");
		if (res) {
			res = FUNC4 (res + 1, "\n\n");
		}
		return res? res + 2: ptr2;
	}
	return NULL;
}