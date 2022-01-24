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
 int LZ4F_blockIndependent ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

const char* FUNC1(int sizeID, int blockMode, char* buffer) {
    buffer[0] = 'B';
    FUNC0(sizeID >= 4); FUNC0(sizeID <= 7);
    buffer[1] = (char)(sizeID + '0');
    buffer[2] = (blockMode == LZ4F_blockIndependent) ? 'I' : 'D';
    buffer[3] = 0;
    return buffer;
}