#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nkeys; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ ForeignKeyCacheInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  confkey ; 
 int /*<<< orphan*/  confrelid ; 
 int /*<<< orphan*/  conkey ; 
 int /*<<< orphan*/  conoid ; 
 int /*<<< orphan*/  conpfeqop ; 
 int /*<<< orphan*/  conrelid ; 
 int /*<<< orphan*/  nkeys ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const ForeignKeyCacheInfo *node)
{
	FUNC2("FOREIGNKEYCACHEINFO");

	FUNC4(conoid);
	FUNC4(conrelid);
	FUNC4(confrelid);
	FUNC1(nkeys);
	FUNC0(conkey, node->nkeys);
	FUNC0(confkey, node->nkeys);
	FUNC3(conpfeqop, node->nkeys);
}