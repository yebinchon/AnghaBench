#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {char relreplident; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void
FUNC8(StringInfo out, Relation rel)
{
	char	   *relname;

	FUNC5(out, 'R');		/* sending RELATION */

	/* use Oid as relation identifier */
	FUNC6(out, FUNC2(rel));

	/* send qualified relation name */
	FUNC4(out, FUNC0(rel));
	relname = FUNC1(rel);
	FUNC7(out, relname);

	/* send replica identity */
	FUNC5(out, rel->rd_rel->relreplident);

	/* send the attribute info */
	FUNC3(out, rel);
}