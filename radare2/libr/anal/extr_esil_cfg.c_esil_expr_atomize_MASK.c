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
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  RIDStorage ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(RIDStorage *atoms, char *expr) {
	ut32 forget_me;
	for (
		; !!expr && FUNC1 (atoms, expr, &forget_me);
		expr = FUNC0 (expr, ',')) {
	}
}