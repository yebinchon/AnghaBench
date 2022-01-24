#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum path_delim { ____Placeholder_path_delim } path_delim ;
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ Point ;

/* Variables and functions */
 int /*<<< orphan*/  DELIM ; 
 int /*<<< orphan*/  LDELIM ; 
 int /*<<< orphan*/  LDELIM_EP ; 
#define  PATH_CLOSED 130 
#define  PATH_NONE 129 
#define  PATH_OPEN 128 
 int /*<<< orphan*/  RDELIM ; 
 int /*<<< orphan*/  RDELIM_EP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static char *
FUNC3(enum path_delim path_delim, int npts, Point *pt)
{
	StringInfoData str;
	int			i;

	FUNC1(&str);

	switch (path_delim)
	{
		case PATH_CLOSED:
			FUNC0(&str, LDELIM);
			break;
		case PATH_OPEN:
			FUNC0(&str, LDELIM_EP);
			break;
		case PATH_NONE:
			break;
	}

	for (i = 0; i < npts; i++)
	{
		if (i > 0)
			FUNC0(&str, DELIM);
		FUNC0(&str, LDELIM);
		FUNC2(pt->x, pt->y, &str);
		FUNC0(&str, RDELIM);
		pt++;
	}

	switch (path_delim)
	{
		case PATH_CLOSED:
			FUNC0(&str, RDELIM);
			break;
		case PATH_OPEN:
			FUNC0(&str, RDELIM_EP);
			break;
		case PATH_NONE:
			break;
	}

	return str.data;
}