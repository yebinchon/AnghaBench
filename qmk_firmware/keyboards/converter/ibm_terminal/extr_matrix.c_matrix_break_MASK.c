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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int* matrix ; 
 scalar_t__ FUNC2 (size_t,int) ; 

__attribute__((used)) inline
static void FUNC3(uint8_t code)
{
    if (FUNC2(FUNC1(code), FUNC0(code))) {
        matrix[FUNC1(code)] &= ~(1<<FUNC0(code));
    }
}