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

/* Variables and functions */
 int /*<<< orphan*/  ATA_PORT_NSECT ; 
 int FIS_LOOP_COUNT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int device)
{
	int status = 0;
	int loops = 0;

	do {
		FUNC1(200000);
		if (FUNC0(device, ATA_PORT_NSECT) > 0) {
			status = 1;
			break;
		}
	} while (++loops < FIS_LOOP_COUNT);

	return status;
}