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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int*,int,int,int /*<<< orphan*/ *) ; 

void FUNC2(FILE* fp, int* i) {
    size_t read = FUNC1(i, sizeof(*i), 1, fp);
    if (read != 1) { FUNC0(12); }
}