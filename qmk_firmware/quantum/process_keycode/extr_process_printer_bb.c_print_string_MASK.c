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
typedef  size_t uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 size_t FUNC1 (char*) ; 

void FUNC2(char c[]) {
    for (uint8_t i = 0; i < FUNC1(c); i++) FUNC0(c[i]);
}