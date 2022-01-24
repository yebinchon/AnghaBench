#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* items; } ;
struct TYPE_9__ {int type; struct TYPE_9__* parent; int /*<<< orphan*/  keyName; } ;
struct TYPE_8__ {int type; } ;
typedef  TYPE_1__ JsonPathItem ;
typedef  TYPE_2__ JsonPathGinPathItem ;
typedef  TYPE_3__ JsonPathGinPath ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  JGINFLAG_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  jpiAny 133 
#define  jpiAnyArray 132 
#define  jpiAnyKey 131 
#define  jpiIndexArray 130 
#define  jpiKey 129 
#define  jpiRoot 128 
 char* FUNC1 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC3 (int) ; 

__attribute__((used)) static bool
FUNC4(JsonPathGinPath *path, JsonPathItem *jsp)
{
	JsonPathGinPathItem *pentry;
	Datum		keyName;

	switch (jsp->type)
	{
		case jpiRoot:
			path->items = NULL; /* reset path */
			return true;

		case jpiKey:
			{
				int			len;
				char	   *key = FUNC1(jsp, &len);

				keyName = FUNC2(JGINFLAG_KEY, key, len);
				break;
			}

		case jpiAny:
		case jpiAnyKey:
		case jpiAnyArray:
		case jpiIndexArray:
			keyName = FUNC0(NULL);
			break;

		default:
			/* other path items like item methods are not supported */
			return false;
	}

	pentry = FUNC3(sizeof(*pentry));

	pentry->type = jsp->type;
	pentry->keyName = keyName;
	pentry->parent = path->items;

	path->items = pentry;

	return true;
}