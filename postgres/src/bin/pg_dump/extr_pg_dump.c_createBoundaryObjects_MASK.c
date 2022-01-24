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
struct TYPE_4__ {void* name; void* catId; int /*<<< orphan*/  objType; } ;
typedef  TYPE_1__ DumpableObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DO_POST_DATA_BOUNDARY ; 
 int /*<<< orphan*/  DO_PRE_DATA_BOUNDARY ; 
 void* nilCatalogId ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (char*) ; 

__attribute__((used)) static DumpableObject *
FUNC3(void)
{
	DumpableObject *dobjs;

	dobjs = (DumpableObject *) FUNC1(2 * sizeof(DumpableObject));

	dobjs[0].objType = DO_PRE_DATA_BOUNDARY;
	dobjs[0].catId = nilCatalogId;
	FUNC0(dobjs + 0);
	dobjs[0].name = FUNC2("PRE-DATA BOUNDARY");

	dobjs[1].objType = DO_POST_DATA_BOUNDARY;
	dobjs[1].catId = nilCatalogId;
	FUNC0(dobjs + 1);
	dobjs[1].name = FUNC2("POST-DATA BOUNDARY");

	return dobjs;
}