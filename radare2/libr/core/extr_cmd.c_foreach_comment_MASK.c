#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* user; TYPE_1__* anal; } ;
struct TYPE_3__ {int /*<<< orphan*/ * user; } ;
typedef  int /*<<< orphan*/  RCore ;
typedef  TYPE_2__ RAnalMetaUserItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC5(void *user, const char *k, const char *v) {
	RAnalMetaUserItem *ui = user;
	RCore *core = ui->anal->user;
	const char *cmd = ui->user;
	if (!FUNC4 (k, "meta.C.", 7)) {
		char *cmt = (char *)FUNC3 (v, 0);
		if (cmt) {
			FUNC2 (core, "s %s", k + 7);
			FUNC1 (core, cmd);
			FUNC0 (cmt);
		}
	}
	return 1;
}