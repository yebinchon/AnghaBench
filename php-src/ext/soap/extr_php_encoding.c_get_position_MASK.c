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
 int /*<<< orphan*/  FUNC0 (int,char const*,int**) ; 
 int* FUNC1 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int* FUNC2(int dimension, const char* str)
{
	int *pos;

	pos = FUNC1(sizeof(int), dimension, 0);
	FUNC0(dimension, str, &pos);
	return pos;
}