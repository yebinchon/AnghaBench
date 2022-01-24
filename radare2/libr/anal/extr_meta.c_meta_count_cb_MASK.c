#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ctx; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ myMetaUser ;
struct TYPE_8__ {scalar_t__ space; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  anal; TYPE_1__* user; } ;
typedef  TYPE_2__ RAnalMetaUserItem ;
typedef  TYPE_3__ RAnalMetaItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(void *user, const char *k, const char *v) {
	RAnalMetaUserItem *ui = user;
	myMetaUser *mu = ui->user;
	RAnalMetaItem it = {0};
	if (!FUNC2 (k, ".0x")) {
		return 1;
	}
	FUNC0 (ui->anal, &it, k, v);
	if (mu && it.space == mu->ctx) {
		mu->count++;
	}
	FUNC1 (&it);
	return 1;
}