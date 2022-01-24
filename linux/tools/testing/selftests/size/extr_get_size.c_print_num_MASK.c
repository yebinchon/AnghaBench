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
typedef  int /*<<< orphan*/  num_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(unsigned long num)
{
	char num_buf[30];

	return FUNC1(FUNC0(num, num_buf, sizeof(num_buf)));
}