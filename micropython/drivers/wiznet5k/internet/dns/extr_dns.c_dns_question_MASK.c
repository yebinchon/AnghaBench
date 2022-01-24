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
 int MAXCNAME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 

uint8_t * FUNC1(uint8_t * msg, uint8_t * cp)
{
	int len;
	char name[MAXCNAME];

	len = FUNC0(msg, cp, name, MAXCNAME);


	if (len == -1) return 0;

	cp += len;
	cp += 2;		/* type */
	cp += 2;		/* class */

	return cp;
}