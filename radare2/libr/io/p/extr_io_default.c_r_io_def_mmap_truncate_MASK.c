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
struct TYPE_4__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ RIOMMapFileObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(RIOMMapFileObj *mmo, ut64 size) {
	bool res = FUNC1 (mmo->filename, size);
	if (res && !FUNC2 (mmo) ) {
		FUNC0 ("r_io_def_mmap_truncate: Error trying to refresh the def_mmap'ed file.");
		res = false;
	} else if (!res) {
		FUNC0 ("r_io_def_mmap_truncate: Error trying to resize the file.");
	}
	return res;
}