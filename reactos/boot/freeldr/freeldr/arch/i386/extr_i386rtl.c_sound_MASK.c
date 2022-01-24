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
typedef  int /*<<< orphan*/  PUCHAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(int freq)
{
    int scale;

    if (freq == 0)
    {
        FUNC1((PUCHAR)0x61, FUNC0((PUCHAR)0x61) & ~3);
        return;
    }

    scale = 1193046 / freq;
    FUNC1((PUCHAR)0x43, 0xb6);
    FUNC1((PUCHAR)0x42, scale & 0xff);
    FUNC1((PUCHAR)0x42, scale >> 8);
    FUNC1((PUCHAR)0x61, FUNC0((PUCHAR)0x61) | 3);
}