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
struct TYPE_3__ {int (* get_offset ) (int /*<<< orphan*/ *,int,int) ;} ;
typedef  TYPE_1__ RBinPlugin ;
typedef  int /*<<< orphan*/  RBinFile ;
typedef  int /*<<< orphan*/  RBin ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC3(RBin *bin, int type, int idx) {
	RBinFile *a = FUNC0 (bin);
	RBinPlugin *plugin = FUNC1 (a);
	if (plugin && plugin->get_offset) {
		return plugin->get_offset (a, type, idx);
	}
	return -1;
}