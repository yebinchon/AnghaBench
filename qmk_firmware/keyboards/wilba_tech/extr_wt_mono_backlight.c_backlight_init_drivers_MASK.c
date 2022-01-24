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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ISSI_ADDR_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	// Initialize I2C
	FUNC3();
	FUNC0( ISSI_ADDR_DEFAULT );

	for ( uint8_t index = 0; index < 96; index++ )	{
		FUNC1( index, true );
	}
	FUNC2( ISSI_ADDR_DEFAULT, 0x00 );
}