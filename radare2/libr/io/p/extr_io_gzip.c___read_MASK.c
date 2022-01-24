#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut32 ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(RIO *io, RIODesc *fd, ut8 *buf, int count) {
	FUNC4 (buf, 0xff, count);
	if (!fd || !fd->data) {
		return -1;
	}
	ut32 mallocsz = FUNC2 (fd);
	if (FUNC1 (fd) > mallocsz) {
		return -1;
	}
	if (FUNC1 (fd) + count >= mallocsz) {
		count = mallocsz - FUNC1 (fd);
	}
	FUNC3 (buf, FUNC0 (fd) + FUNC1 (fd), count);
	return count;
}