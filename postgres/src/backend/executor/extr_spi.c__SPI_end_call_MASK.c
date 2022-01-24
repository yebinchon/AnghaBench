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
struct TYPE_2__ {int /*<<< orphan*/  execCxt; int /*<<< orphan*/  execSubid; } ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidSubTransactionId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* _SPI_current ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(bool use_exec)
{
	if (use_exec)
	{
		/* switch to the procedure memory context */
		FUNC1();
		/* mark Executor context no longer in use */
		_SPI_current->execSubid = InvalidSubTransactionId;
		/* and free Executor memory */
		FUNC0(_SPI_current->execCxt);
	}

	return 0;
}