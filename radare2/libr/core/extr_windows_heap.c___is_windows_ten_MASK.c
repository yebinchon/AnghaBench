#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ version; } ;
typedef  TYPE_1__ RSysInfo ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (scalar_t__,char) ; 

__attribute__((used)) static bool FUNC4() {
	int major = 0;
	RSysInfo *info = FUNC1 ();
	if (info && info->version) {
		char *dot = FUNC3 (info->version, '.');
		if (dot) {
			*dot = '\0';
			major = FUNC0 (info->version);
		}
	}
	FUNC2 (info);
	return major == 10;
}