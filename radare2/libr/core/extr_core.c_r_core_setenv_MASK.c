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
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  R2_HOME_BIN ; 
 int /*<<< orphan*/  R_SYS_ENVSEP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5 (RCore *core) {
	char *e = FUNC3 ("PATH");
	char *h = FUNC1 (R2_HOME_BIN);
	char *n = FUNC2 ("%s%s%s", h, R_SYS_ENVSEP, e);
	FUNC4 ("PATH", n);
	FUNC0 (n);
	FUNC0 (h);
	FUNC0 (e);
}