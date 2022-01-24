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
typedef  int /*<<< orphan*/  CreateSeqStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  for_identity ; 
 int /*<<< orphan*/  if_not_exists ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  ownerId ; 
 int /*<<< orphan*/  sequence ; 

__attribute__((used)) static bool
FUNC2(const CreateSeqStmt *a, const CreateSeqStmt *b)
{
	FUNC0(sequence);
	FUNC0(options);
	FUNC1(ownerId);
	FUNC1(for_identity);
	FUNC1(if_not_exists);

	return true;
}