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
 int /*<<< orphan*/  B0 ; 
 int /*<<< orphan*/  B1 ; 
 int /*<<< orphan*/  B2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC0(B0);
    FUNC0(B1);
    FUNC0(B2);
	// make all pins high to select Y7, nothing is connected to that (otherwise the first row will act weird)
    FUNC1(B0);
    FUNC1(B1);
    FUNC1(B2);
}