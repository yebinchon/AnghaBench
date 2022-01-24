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
struct TYPE_11__ {int size; int /*<<< orphan*/  p; int /*<<< orphan*/ * data; int /*<<< orphan*/ * ptr; } ;
struct TYPE_9__ {char* (* cmdstrf ) (int /*<<< orphan*/ ,char*,char*) ;int /*<<< orphan*/  core; } ;
struct TYPE_10__ {int /*<<< orphan*/  p; TYPE_1__ cob; } ;
typedef  TYPE_2__ RFSRoot ;
typedef  TYPE_3__ RFSFile ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,char) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static RFSFile *FUNC5(RFSRoot *root, RFSFile *file, const char *path) {
	if (FUNC3 (path) < 6) {
		return NULL;
	}
	char *a = FUNC2 (path + 5);
	FUNC1 (a, '/', '.');
	char *res = root->cob.cmdstrf (root->cob.core, "e %s", a);
	// root->iob.io->cb_printf ("%s\n", res);
	// eprintf ("%s", res);
	if (!file) {
		file = FUNC0 (root, path);
	}
	file->ptr = NULL;
	file->data = (ut8*)res;
	file->p = root->p;
	file->size = FUNC3 (res);
	return file;
}