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
typedef  int /*<<< orphan*/  text ;
typedef  scalar_t__ data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static text *
FUNC3(text *data, int enc)
{
	FUNC2((unsigned char *) FUNC0(data),	/* src */
				(unsigned char *) (data) + FUNC1(data),	/* src end */
				(unsigned char *) FUNC0(data),	/* dest */
				enc);			/* encoding */

	return data;
}