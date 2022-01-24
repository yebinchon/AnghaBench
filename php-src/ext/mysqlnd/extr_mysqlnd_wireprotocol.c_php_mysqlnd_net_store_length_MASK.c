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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  scalar_t__ zend_uchar ;
typedef  scalar_t__ const uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__ const) ; 

zend_uchar *
FUNC4(zend_uchar *packet, const uint64_t length)
{
	if (length < (uint64_t) FUNC0(251)) {
		*packet = (zend_uchar) length;
		return packet + 1;
	}

	if (length < (uint64_t) FUNC0(65536)) {
		*packet++ = 252;
		FUNC1(packet,(unsigned int) length);
		return packet + 2;
	}

	if (length < (uint64_t) FUNC0(16777216)) {
		*packet++ = 253;
		FUNC2(packet,(zend_ulong) length);
		return packet + 3;
	}
	*packet++ = 254;
	FUNC3(packet, length);
	return packet + 8;
}