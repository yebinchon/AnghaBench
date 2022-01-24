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
typedef  scalar_t__ ut64 ;
typedef  scalar_t__ st64 ;
struct TYPE_4__ {int rawio; int fd; scalar_t__ nocache; int /*<<< orphan*/  mode; int /*<<< orphan*/  perm; int /*<<< orphan*/  filename; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * io_backref; } ;
typedef  TYPE_1__ RIOMMapFileObj ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/  F_NOCACHE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ ST32_MAX ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(RIOMMapFileObj *mmo) {
	RIO* io = mmo->io_backref;
	ut64 cur;
	if (mmo->buf) {
		cur = FUNC4 (mmo->buf);
		FUNC2 (mmo->buf);
		mmo->buf = NULL;
	} else {
		cur = 0;
	}
	st64 sz = FUNC5 (mmo->filename);
	if (sz > ST32_MAX) {
		// Do not use mmap if the file is huge
		mmo->rawio = 1;
	}
	if (mmo->rawio) {
		mmo->fd = FUNC0 (mmo->filename, mmo->perm, mmo->mode);
		if (mmo->nocache) {
#ifdef F_NOCACHE
			fcntl (mmo->fd, F_NOCACHE, 1);
#endif
		}
		return (mmo->fd != -1);
	}
	mmo->buf = FUNC3 (mmo->filename, mmo->perm);
	if (mmo->buf) {
		FUNC6 (io, mmo, cur, SEEK_SET);
		return true;
	} else {
		mmo->rawio = 1;
		mmo->fd = FUNC0 (mmo->filename, mmo->perm, mmo->mode);
		if (mmo->nocache) {
#ifdef F_NOCACHE
			fcntl (mmo->fd, F_NOCACHE, 1);
#endif
		}
		return (mmo->fd != -1);
	}
	return false;
}