#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ error; } ;
typedef  TYPE_1__ MYSQLND_ERROR_LIST_ELEMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DBG_VOID_RETURN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void * pDest)
{
	MYSQLND_ERROR_LIST_ELEMENT * element = (MYSQLND_ERROR_LIST_ELEMENT *) pDest;

	FUNC0("mysqlnd_error_list_pdtor");
	if (element->error) {
		FUNC1(element->error, TRUE);
	}
	DBG_VOID_RETURN;
}