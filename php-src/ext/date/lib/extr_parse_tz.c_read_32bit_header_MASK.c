#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {void* charcnt; void* typecnt; void* timecnt; void* leapcnt; void* ttisstdcnt; void* ttisgmtcnt; } ;
struct TYPE_5__ {TYPE_1__ _bit32; } ;
typedef  TYPE_2__ timelib_tzinfo ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned char const*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const unsigned char **tzf, timelib_tzinfo *tz)
{
	uint32_t buffer[6];

	FUNC0(&buffer, *tzf, sizeof(buffer));
	tz->_bit32.ttisgmtcnt = FUNC1(buffer[0]);
	tz->_bit32.ttisstdcnt = FUNC1(buffer[1]);
	tz->_bit32.leapcnt    = FUNC1(buffer[2]);
	tz->_bit32.timecnt    = FUNC1(buffer[3]);
	tz->_bit32.typecnt    = FUNC1(buffer[4]);
	tz->_bit32.charcnt    = FUNC1(buffer[5]);

	*tzf += sizeof(buffer);
}