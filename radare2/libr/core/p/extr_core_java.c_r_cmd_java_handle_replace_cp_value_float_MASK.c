#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  ut16 ;
typedef  int /*<<< orphan*/  RCore ;
typedef  int /*<<< orphan*/  RBinJavaObj ;

/* Variables and functions */
 double FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2 (RCore *core, RBinJavaObj *obj, const char *cmd, ut16 idx, ut64 addr) {
	float value = cmd && *cmd ? FUNC0 (cmd) : 0.0;
	int res = false;
	res = FUNC1 (core, obj, idx, addr, (ut8 *) &value, 4);
	return res;
}