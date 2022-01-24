#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_4__ {int type; int time; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RFSFile ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(RList *list, const char *name, int type, int time, ut64 size) {
	if (!list || !name || !*name) {
		return;
	}
	RFSFile *fsf = FUNC0 (NULL, name);
	if (!fsf) {
		return;
	}
	fsf->type = type;
	fsf->time = time;
	fsf->size = size;
	FUNC1 (list, fsf);
}