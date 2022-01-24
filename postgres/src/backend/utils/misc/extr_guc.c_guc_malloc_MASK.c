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
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (size_t) ; 

__attribute__((used)) static void *
FUNC4(int elevel, size_t size)
{
	void	   *data;

	/* Avoid unportable behavior of malloc(0) */
	if (size == 0)
		size = 1;
	data = FUNC3(size);
	if (data == NULL)
		FUNC0(elevel,
				(FUNC1(ERRCODE_OUT_OF_MEMORY),
				 FUNC2("out of memory")));
	return data;
}