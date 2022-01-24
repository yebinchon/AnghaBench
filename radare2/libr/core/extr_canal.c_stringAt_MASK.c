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
typedef  scalar_t__ ut8 ;
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  io; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 

__attribute__((used)) static bool FUNC2(RCore *core, ut64 addr) {
	ut8 buf[32];
	FUNC1 (core->io, addr - 1, buf, sizeof (buf));
	// check if previous byte is a null byte, all strings, except pascal ones should be like this
	if (buf[0] != 0) {
		return false;
	}
	return FUNC0 (buf + 1, 31, NULL);
}