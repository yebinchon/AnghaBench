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
struct SYSCACHECALLBACK {int /*<<< orphan*/  id; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct RELCACHECALLBACK {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int relcache_callback_count ; 
 struct RELCACHECALLBACK* relcache_callback_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int syscache_callback_count ; 
 struct SYSCACHECALLBACK* syscache_callback_list ; 

void
FUNC5(void)
{
	int			i;

	FUNC0();
	FUNC2();
	FUNC1();	/* gets smgr and relmap too */

	for (i = 0; i < syscache_callback_count; i++)
	{
		struct SYSCACHECALLBACK *ccitem = syscache_callback_list + i;

		ccitem->function(ccitem->arg, ccitem->id, 0);
	}

	for (i = 0; i < relcache_callback_count; i++)
	{
		struct RELCACHECALLBACK *ccitem = relcache_callback_list + i;

		ccitem->function(ccitem->arg, InvalidOid);
	}
}