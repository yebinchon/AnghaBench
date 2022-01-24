#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC5(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
	if (!fd || !buf || count < 0 || !fd->data) {
		return -1;
	}
	if (FUNC1 (fd) > FUNC3 (fd)) {
		return -1;
	}
	if (FUNC1 (fd) + count > FUNC3 (fd)) {
		count -= (FUNC1 (fd) + count -FUNC3 (fd));
	}
	if (count > 0) {
		FUNC4 (FUNC0 (fd) + FUNC1 (fd), buf, count);
		FUNC2 (fd, FUNC1 (fd) + count);
		return count;
	}
	return -1;
}