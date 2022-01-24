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
struct TYPE_4__ {int /*<<< orphan*/ * nested; } ;
struct TYPE_5__ {TYPE_1__ lang; } ;
typedef  TYPE_2__ REgg ;

/* Variables and functions */
 int CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(REgg *egg, const char *s) {
	int i = 0;
	if (CTX < 1) {
		return;
	}
	FUNC1 (egg->lang.nested[CTX]);
	egg->lang.nested[CTX] = FUNC2 (s);
	// egg->lang.nestedi[c]++;
	// seems not need to increase egg->lang.nestedi[c]
	/** clear inner levels **/
	for (i = 1; i < 10; i++) {
		// egg->lang.nestedi[context+i] = 0;
		FUNC0 (egg->lang.nested[CTX + i]);
	}
}