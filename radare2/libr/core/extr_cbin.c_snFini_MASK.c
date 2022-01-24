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
struct TYPE_3__ {int /*<<< orphan*/  methflag; int /*<<< orphan*/  methname; int /*<<< orphan*/  classflag; int /*<<< orphan*/  classname; int /*<<< orphan*/  demflag; int /*<<< orphan*/  demname; int /*<<< orphan*/  nameflag; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SymName ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(SymName *sn) {
	FUNC0 (sn->name);
	FUNC0 (sn->nameflag);
	FUNC0 (sn->demname);
	FUNC0 (sn->demflag);
	FUNC0 (sn->classname);
	FUNC0 (sn->classflag);
	FUNC0 (sn->methname);
	FUNC0 (sn->methflag);
}