#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cbuf ;
struct TYPE_5__ {int /*<<< orphan*/ * verb; int /*<<< orphan*/ * accel; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ MenuMap ;

/* Variables and functions */
 int BUFSIZ ; 
 int MENU_INC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* menuMap ; 
 int menuMapMax ; 
 int menuMapSize ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 scalar_t__ workshopHotKeysEnabled ; 

__attribute__((used)) static void
FUNC4(
	char		*menu,		/* menu name */
	char		*accel,		/* accelerator text (optional) */
	char		*verb)		/* WorkShop action-verb */
{
    MenuMap		*newMap;
    char		 cbuf[BUFSIZ];

    if (menuMapSize >= menuMapMax)
    {
	newMap = FUNC1(menuMap,
		sizeof(MenuMap) * (menuMapMax + MENU_INC));
	if (newMap != NULL)
	{
	    menuMap = newMap;
	    menuMapMax += MENU_INC;
	}
    }
    if (menuMapSize < menuMapMax)
    {
	menuMap[menuMapSize].name = FUNC2(menu);
	menuMap[menuMapSize].accel = accel && *accel ? FUNC2(accel) : NULL;
	menuMap[menuMapSize++].verb = FUNC2(verb);
	if (accel && workshopHotKeysEnabled)
	{
	    FUNC3(cbuf, sizeof(cbuf),
					"map %s :wsverb %s<CR>", accel, verb);
	    FUNC0(cbuf, TRUE);
	}
    }
}