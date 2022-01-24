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
struct TYPE_2__ {scalar_t__ internal_xact; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WARNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  WARNING ; 
 int _SPI_connected ; 
 TYPE_1__* _SPI_current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(bool isCommit)
{
	/* Do nothing if the transaction end was initiated by SPI. */
	if (_SPI_current && _SPI_current->internal_xact)
		return;

	if (isCommit && _SPI_connected != -1)
		FUNC1(WARNING,
				(FUNC2(ERRCODE_WARNING),
				 FUNC4("transaction left non-empty SPI stack"),
				 FUNC3("Check for missing \"SPI_finish\" calls.")));

	FUNC0();
}