#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
typedef  scalar_t__ ut32 ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC10(RIO *io, RIODesc *fd, ut64 count) {
	ut8 * new_buf = NULL;
	if (!fd || !fd->data || count == 0) {
		return false;
	}
	ut32 mallocsz = FUNC5 (fd);
	if (FUNC2 (fd) > mallocsz) {
		return false;
	}
	new_buf = FUNC7 (count);
	if (!new_buf) {
		return -1;
	}
	FUNC8 (new_buf, FUNC1 (fd), FUNC0 (count, mallocsz));
	if (count > mallocsz) {
		FUNC9 (new_buf + mallocsz, 0, count - mallocsz);
	}
	FUNC6 (FUNC1 (fd));
	FUNC3 (fd, new_buf);
	FUNC4 (fd, count);
	return true;
}