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
typedef  int /*<<< orphan*/  NVGcolor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned char,unsigned char,int) ; 

NVGcolor FUNC1(unsigned char r, unsigned char g, unsigned char b)
{
	return FUNC0(r,g,b,255);
}