#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_11__ {int /*<<< orphan*/  size; int /*<<< orphan*/  p; int /*<<< orphan*/ * data; int /*<<< orphan*/ * ptr; } ;
struct TYPE_9__ {char* (* cmdstrf ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  core; } ;
struct TYPE_10__ {int /*<<< orphan*/  p; TYPE_1__ cob; } ;
typedef  TYPE_2__ RFSRoot ;
typedef  TYPE_3__ RFSFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static RFSFile *FUNC4(RFSRoot *root, RFSFile *file, const char *path) {
	char *res = root->cob.cmdstrf (root->cob.core, "?V");
	/// root->iob.io->cb_printf ("%s\n", res);
	if (!file) {
		file = FUNC1 (root, path);
	}
	file->ptr = NULL;
	FUNC0 (file->data);
	file->data = (ut8*)res;
	file->p = root->p;
	file->size = FUNC2 (res);
	return file;
}