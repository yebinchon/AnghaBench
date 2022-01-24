#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_4__ {int /*<<< orphan*/  anal; } ;
struct TYPE_5__ {TYPE_1__ analb; } ;
typedef  TYPE_2__ RParse ;
typedef  int /*<<< orphan*/  RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC5(RParse *p, RAnalFunction *f, ut64 addr, int oplen, char *data, char *str, int len) {
	char *fcn_name = NULL;
	str[0] = 0;
	if (!FUNC4 (data, "call ", 5)) {
		ut32 fcn_id = (ut32) FUNC2 (NULL, data + 5);
		if (!(fcn_name = FUNC1 (p->analb.anal, fcn_id))) {
			return false;
		}
		FUNC3 (str, len, "call sym.%s", fcn_name);
		FUNC0 (fcn_name);
		return true;
	}
	return false;
}