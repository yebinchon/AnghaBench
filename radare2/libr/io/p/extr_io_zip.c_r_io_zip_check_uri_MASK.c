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
struct TYPE_2__ {size_t len; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 TYPE_1__* ZIP_URIS ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC2(const char *file) {
	int i;
	if (FUNC0 (file)) {
		for (i = 0; ZIP_URIS[i].name != NULL; i++) {
			if (!FUNC1 (file, ZIP_URIS[i].name, ZIP_URIS[i].len) && file[ZIP_URIS[i].len]) {
				return true;
			}
		}
	}
	return false;
}