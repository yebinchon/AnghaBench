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
typedef  int UINTEGER64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(uint8_t *timestamp)
{
    /* Copies 8 bytes long timestamp into "timestamp" buffer.
     * Timestamp is Little-endian, 64-bit signed value representing the
     * number of tenths of a microsecond since January 1, 1601.
     */

    UINTEGER64 timestamp_ull;

    timestamp_ull = FUNC1(NULL);
    timestamp_ull = (timestamp_ull + FUNC0(11644473600)) * FUNC0(10000000);

    /* store little endian value */
    timestamp[0] = timestamp_ull & FUNC0(0xFF);
    timestamp[1] = (timestamp_ull  >> 8)  & FUNC0(0xFF);
    timestamp[2] = (timestamp_ull  >> 16) & FUNC0(0xFF);
    timestamp[3] = (timestamp_ull  >> 24) & FUNC0(0xFF);
    timestamp[4] = (timestamp_ull  >> 32) & FUNC0(0xFF);
    timestamp[5] = (timestamp_ull  >> 40) & FUNC0(0xFF);
    timestamp[6] = (timestamp_ull  >> 48) & FUNC0(0xFF);
    timestamp[7] = (timestamp_ull  >> 56) & FUNC0(0xFF);
}