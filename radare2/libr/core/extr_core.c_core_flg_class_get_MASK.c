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
typedef  int /*<<< orphan*/  RFlagItem ;
typedef  int /*<<< orphan*/  RFlag ;

/* Variables and functions */
 int /*<<< orphan*/  R_FLAGS_FS_CLASSES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RFlagItem *FUNC3(RFlag *f, const char *name) {
	FUNC2 (f, R_FLAGS_FS_CLASSES);
	RFlagItem *res = FUNC0 (f, name);
	FUNC1 (f);
	return res;
}