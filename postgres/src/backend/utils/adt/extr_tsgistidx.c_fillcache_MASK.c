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
struct TYPE_3__ {int allistrue; scalar_t__ sign; } ;
typedef  int /*<<< orphan*/  SignTSVector ;
typedef  TYPE_1__ CACHESIGN ;
typedef  int /*<<< orphan*/  BITVEC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 

__attribute__((used)) static void
FUNC5(CACHESIGN *item, SignTSVector *key)
{
	item->allistrue = false;
	if (FUNC2(key))
		FUNC3(item->sign, key);
	else if (FUNC1(key))
		item->allistrue = true;
	else
		FUNC4((void *) item->sign, (void *) FUNC0(key), sizeof(BITVEC));
}