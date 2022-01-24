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
struct tffs_entry {int* val; int /*<<< orphan*/  header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(const struct tffs_entry *entry)
{
	int i;

	/* These are NOT NULL terminated. */
	for (i = 0; i < FUNC1(entry->header); i++)
		FUNC0(stdout, "%c", entry->val[i]);
}