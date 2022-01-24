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
struct TYPE_3__ {int /*<<< orphan*/  ops; } ;
typedef  int /*<<< orphan*/  RAnalEsilOp ;
typedef  TYPE_1__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(RAnalEsil *esil, const char *word, RAnalEsilOp **op) {
	char t[128];
	char *h = FUNC1 (FUNC0 (word), t, 16);
	if (FUNC2 (esil->ops, h)) {
		*op = (RAnalEsilOp *)(size_t)FUNC3 (esil->ops, h, 0);
		return true;
	}
	return false;
}