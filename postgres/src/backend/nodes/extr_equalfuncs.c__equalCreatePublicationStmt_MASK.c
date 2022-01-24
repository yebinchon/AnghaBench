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
typedef  int /*<<< orphan*/  CreatePublicationStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  for_all_tables ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  pubname ; 
 int /*<<< orphan*/  tables ; 

__attribute__((used)) static bool
FUNC3(const CreatePublicationStmt *a,
							const CreatePublicationStmt *b)
{
	FUNC2(pubname);
	FUNC0(options);
	FUNC0(tables);
	FUNC1(for_all_tables);

	return true;
}