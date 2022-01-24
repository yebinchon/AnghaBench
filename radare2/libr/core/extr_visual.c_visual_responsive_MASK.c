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
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int*) ; 

__attribute__((used)) static int FUNC3(RCore *core) {
	int h, w = FUNC2 (&h);
	if (FUNC0 (core->config, "scr.responsive")) {
		if (w < 110) {
			FUNC1 (core->config, "asm.cmt.right", 0);
		} else {
			FUNC1 (core->config, "asm.cmt.right", 1);
		}
		if (w < 68) {
			FUNC1 (core->config, "hex.cols", (int)(w / 5.2));
		} else {
			FUNC1 (core->config, "hex.cols", 16);
		}
		if (w < 25) {
			FUNC1 (core->config, "asm.offset", 0);
		} else {
			FUNC1 (core->config, "asm.offset", 1);
		}
		if (w > 80) {
			FUNC1 (core->config, "asm.lines.width", 14);
			FUNC1 (core->config, "asm.lines.width", w - (int)(w / 1.2));
			FUNC1 (core->config, "asm.cmt.col", w - (int)(w / 2.5));
		} else {
			FUNC1 (core->config, "asm.lines.width", 7);
		}
		if (w < 70) {
			FUNC1 (core->config, "asm.lines.width", 1);
			FUNC1 (core->config, "asm.bytes", 0);
		} else {
			FUNC1 (core->config, "asm.bytes", 1);
		}
	}
	return w;
}