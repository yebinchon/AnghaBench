#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut32 ;
struct TYPE_10__ {scalar_t__ size; int /*<<< orphan*/  p; int /*<<< orphan*/ * ptr; } ;
struct TYPE_8__ {char* (* system ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  io; } ;
struct TYPE_9__ {int /*<<< orphan*/  p; TYPE_1__ iob; } ;
typedef  TYPE_2__ RFSRoot ;
typedef  TYPE_3__ RFSFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,char const*) ; 
 char* FUNC2 (char*,char const*) ; 
 int FUNC3 (char*,char*,scalar_t__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static RFSFile *FUNC5(RFSRoot *root, const char *path, bool create) {
	char *cmd = FUNC2 ("m %s", path);
	char *res = root->iob.system (root->iob.io, cmd);
	FUNC0 (cmd);
	if (res) {
		ut32 size = 0;
		if (FUNC3 (res, "%u", &size) != 1) {
			size = 0;
		}
		FUNC0 (res);
		if (size == 0) {
			return NULL;
		}
		RFSFile *file = FUNC1 (root, path);
		if (!file) {
			return NULL;
		}
		file->ptr = NULL;
		file->p = root->p;
		file->size = size;
		return file;
	}
	return NULL;
}