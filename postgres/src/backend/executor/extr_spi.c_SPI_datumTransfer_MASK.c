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
struct TYPE_2__ {int /*<<< orphan*/  savedcxt; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* _SPI_current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

Datum
FUNC3(Datum value, bool typByVal, int typLen)
{
	MemoryContext oldcxt;
	Datum		result;

	if (_SPI_current == NULL)
		FUNC2(ERROR, "SPI_datumTransfer called while not connected to SPI");

	oldcxt = FUNC0(_SPI_current->savedcxt);

	result = FUNC1(value, typByVal, typLen);

	FUNC0(oldcxt);

	return result;
}