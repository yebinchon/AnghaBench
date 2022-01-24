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
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  ut16 ;
typedef  int /*<<< orphan*/  RCore ;
typedef  int /*<<< orphan*/  RBinJavaObj ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2 (RCore *core, RBinJavaObj *obj, const char *cmd, ut16 idx, ut64 addr) {
	int res = false;
	ut32 len = cmd && *cmd ? FUNC1 (cmd) : 0;
	if (len > 0 && cmd && *cmd == '"') {
		cmd++;
		len = cmd && *cmd ? FUNC1 (cmd) : 0;
	}
	if (cmd && len > 0) {
		res = FUNC0 (core, obj, idx, addr, (ut8 *) cmd, len);
	}
	return res;
}