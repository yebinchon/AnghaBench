#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* (* cb ) (char const*) ;} ;

/* Variables and functions */
 TYPE_1__* bbcmds ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(int i, const char *arg) {
	char *res = bbcmds[i].cb (arg);
	if (res) {
		FUNC1 ("%s", res);
		FUNC0 (res);
		return 0;
	}
	return 1;
}