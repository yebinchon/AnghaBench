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
typedef  int /*<<< orphan*/  PQExpBufferData ;
typedef  int /*<<< orphan*/ * PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

PQExpBuffer
FUNC2(void)
{
	PQExpBuffer res;

	res = (PQExpBuffer) FUNC1(sizeof(PQExpBufferData));
	if (res != NULL)
		FUNC0(res);

	return res;
}