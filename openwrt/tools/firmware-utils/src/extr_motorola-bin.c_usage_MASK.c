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
struct model {char digit; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct model* models ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *mess)
{
	const struct model *m;

	FUNC1(stderr, "Error: %s\n", mess);
	FUNC1(stderr, "Usage: motorola-bin -device|--strip infile outfile\n");
	FUNC1(stderr, "Known devices: ");

	for (m = models; m->digit != '\0'; m++)
		FUNC1(stderr, " %c - %s", m->digit, m->name);

	FUNC1(stderr, "\n");
	FUNC0(1);
}