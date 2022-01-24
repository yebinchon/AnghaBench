#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_8__ {char* data; TYPE_2__* root; } ;
struct TYPE_6__ {char* (* system ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  io; } ;
struct TYPE_7__ {TYPE_1__ iob; } ;
typedef  TYPE_2__ RFSRoot ;
typedef  TYPE_3__ RFSFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (TYPE_3__*) ; 
 int FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC8(RFSFile *file, ut64 addr, int len) {
	RFSRoot *root = file->root;
	char *abs_path = FUNC3 (file);
	if (!abs_path) {
		return false;
	}
	char *cmd = FUNC5 ("mg %s", abs_path);
	FUNC0 (abs_path);
	if (!cmd) {
		return false;
	}
	char *res = root->iob.system (root->iob.io, cmd);
	FUNC0 (cmd);
	if (res) {
		int encoded_size = FUNC6 (res);
		if (encoded_size != len * 2) {
			FUNC2 ("Unexpected size (%d vs %d)\n", encoded_size, len*2);
			FUNC0 (res);
			return false;
		}
		file->data = (ut8 *) FUNC1 (1, len);
		if (!file->data) {
			FUNC0 (res);
			return false;
		}
		int ret = FUNC4 (res, file->data);
		if (ret != len) {
			FUNC2 ("Inconsistent read\n");
			FUNC0 (file->data);
		}
		FUNC0 (res);
	}
	return false;
}