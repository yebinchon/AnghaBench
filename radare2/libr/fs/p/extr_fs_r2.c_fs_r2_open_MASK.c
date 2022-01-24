#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* path; int /*<<< orphan*/ * (* cat ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ;} ;
typedef  int /*<<< orphan*/  RFSRoot ;
typedef  int /*<<< orphan*/  RFSFile ;

/* Variables and functions */
 TYPE_1__* routes ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static RFSFile* FUNC3(RFSRoot *root, const char *path, bool create) {
	int i;
	for (i = 0; routes[i].path; i++) {
		const char *cwd = routes[i].path;
		if (routes[i].cat && !FUNC1 (path, cwd, FUNC0 (cwd))) {
			return routes[i].cat (root, NULL, path);
		}
	}
	return NULL;
}