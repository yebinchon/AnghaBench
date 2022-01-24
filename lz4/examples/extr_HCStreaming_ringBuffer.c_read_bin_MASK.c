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
 size_t FUNC1 (void*,int,size_t,int /*<<< orphan*/ *) ; 

size_t FUNC2(FILE* fp, void* array, int arrayBytes) {
    FUNC0(arrayBytes >= 0);
    return FUNC1(array, 1, (size_t)arrayBytes, fp);
}