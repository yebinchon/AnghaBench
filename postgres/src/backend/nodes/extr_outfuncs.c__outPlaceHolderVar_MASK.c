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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PlaceHolderVar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phexpr ; 
 int /*<<< orphan*/  phid ; 
 int /*<<< orphan*/  phlevelsup ; 
 int /*<<< orphan*/  phrels ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const PlaceHolderVar *node)
{
	FUNC2("PLACEHOLDERVAR");

	FUNC1(phexpr);
	FUNC0(phrels);
	FUNC3(phid);
	FUNC3(phlevelsup);
}