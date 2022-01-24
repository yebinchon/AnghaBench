#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  p; int /*<<< orphan*/ * ptr; } ;
struct TYPE_8__ {int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ RFSRoot ;
typedef  TYPE_2__ RFSFile ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 

__attribute__((used)) static RFSFile* FUNC6(RFSRoot *root, const char *path, bool create) {
	FILE *fd;
	RFSFile *file = FUNC4 (root, path);
	if (!file) {
		return NULL;
	}
	file->ptr = NULL;
	file->p = root->p;
	fd = FUNC5 (path, create? "wb": "rb");
	if (fd) {
		FUNC1 (fd, 0, SEEK_END);
		file->size = FUNC2 (fd);
		FUNC0 (fd);
	} else {
		FUNC3 (file);
		file = NULL;
	}
	return file;
}