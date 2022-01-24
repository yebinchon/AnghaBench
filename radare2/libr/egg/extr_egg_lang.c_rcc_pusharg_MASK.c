#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  nargs; int /*<<< orphan*/  varxs; scalar_t__ pushargs; int /*<<< orphan*/ * ctxpush; } ;
struct TYPE_9__ {TYPE_1__ lang; TYPE_2__* remit; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* push_arg ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ;} ;
typedef  TYPE_2__ REggEmit ;
typedef  TYPE_3__ REgg ;

/* Variables and functions */
 size_t CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_3__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(REgg *egg, char *str) {
	REggEmit *e = egg->remit;
	char buf[64], *p = FUNC2 (egg, buf, str, 0);
	if (!p) {
		return;
	}
	FUNC0 (egg->lang.ctxpush[CTX]);
	egg->lang.ctxpush[CTX] = FUNC3 (p);	// INDEX IT WITH NARGS OR CONTEXT?!?
	egg->lang.nargs++;
	if (egg->lang.pushargs) {
		e->push_arg (egg, egg->lang.varxs, egg->lang.nargs, p);
	}
	// egg->lang.ctxpush[context+egg->lang.nbrackets] = strdup(str); // use egg->lang.nargs??? (in callname)
	FUNC1 (p);
}