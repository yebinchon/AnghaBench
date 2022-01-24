#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_8__ {unsigned int off; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ RIODesc ;
typedef  TYPE_2__ RIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(RIO *io, RIODesc *fd, ut8 *buf, int count) {
	unsigned int sz;
	if (!fd || !fd->data) {
		return -1;
	}
	sz = FUNC1 (fd);
	if (io->off >= sz) {
		return -1;
	}
	if (io->off + count >= sz) {
		count = sz - io->off;
	}
	FUNC2 (buf, FUNC0 (fd) + io->off, count);
	return count;
}