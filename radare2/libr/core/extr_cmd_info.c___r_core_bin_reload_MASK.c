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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int /*<<< orphan*/  bin; } ;
struct TYPE_9__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ RCoreFile ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(RCore *r, const char *file, ut64 baseaddr) {
	int result = 0;
	RCoreFile *cf = FUNC4 (r);
	if (cf) {
		RBinFile *bf = FUNC1 (r->bin, cf->fd);
		result = FUNC2 (r->bin, bf->id, baseaddr);
	}
	FUNC3 (r, FUNC0 (r->bin));
	return result;
}