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
struct TYPE_4__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  filename; int /*<<< orphan*/ * io_backref; } ;
typedef  TYPE_1__ RIOMMapFileObj ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(RIOMMapFileObj *mmo) {
	RIO* io = mmo->io_backref;
	ut64 cur = mmo->buf? FUNC2 (mmo->buf): 0;
	if (mmo->buf) {
		FUNC0 (mmo->buf);
		mmo->buf = NULL;
	}
	mmo->buf = FUNC1 (mmo->filename, mmo->flags);
	if (mmo->buf) {
		FUNC3 (io, mmo, cur, SEEK_SET);
	}
	return mmo->buf != NULL;
}