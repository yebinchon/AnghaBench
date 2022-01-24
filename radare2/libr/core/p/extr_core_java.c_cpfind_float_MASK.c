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
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RCore ;
typedef  int /*<<< orphan*/  RBinJavaObj ;

/* Variables and functions */
 int /*<<< orphan*/  R_BIN_JAVA_CP_FLOAT ; 
 double FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

__attribute__((used)) static RList * FUNC3 (RCore *core, RBinJavaObj *obj, const char *cmd) {
	float value = cmd && *cmd ? FUNC0 (cmd) : 0.0;
	if (value == 0.0 && !(cmd && cmd[0] == '0' && cmd[1] == '.' && cmd[2] == '0')) {
		return FUNC2 ();
	}
	return FUNC1 ( obj, (const ut8 *) &value, 4, R_BIN_JAVA_CP_FLOAT);
}