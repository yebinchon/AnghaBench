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

/* Variables and functions */
 int FUNC0 (int,char**) ; 
 int FUNC1 (int,char**) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int FUNC3(int argc, char **argv) {
	if (argc > 0 && FUNC2 (argv[0], "r2p")) {
		return FUNC0 (argc, argv);
	}
	return FUNC1 (argc, argv);
}