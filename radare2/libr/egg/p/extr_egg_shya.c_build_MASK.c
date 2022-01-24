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
typedef  int /*<<< orphan*/  REgg ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static RBuffer *FUNC4 (REgg *egg) {
	RBuffer *buf = FUNC2 ();
	char *key = FUNC3 (egg, "key");
	char *seed = FUNC3 (egg, "seed");
	FUNC0 ("TODO: shoorisu yagana shellcode encoder\n");
	FUNC1 (key);
	FUNC1 (seed);
	return buf;
}