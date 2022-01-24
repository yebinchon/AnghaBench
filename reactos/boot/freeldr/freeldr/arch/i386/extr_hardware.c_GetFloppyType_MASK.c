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
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  PUCHAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
UCHAR
FUNC2(UCHAR DriveNumber)
{
    UCHAR Data;

    FUNC1((PUCHAR)0x70, 0x10);
    Data = FUNC0((PUCHAR)0x71);

    if (DriveNumber == 0)
        return Data >> 4;
    else if (DriveNumber == 1)
        return Data & 0x0F;

    return 0;
}