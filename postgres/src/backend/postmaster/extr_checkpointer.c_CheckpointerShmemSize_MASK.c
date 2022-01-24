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
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  CheckpointerRequest ;

/* Variables and functions */
 int /*<<< orphan*/  CheckpointerShmemStruct ; 
 int /*<<< orphan*/  NBuffers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  requests ; 

Size
FUNC3(void)
{
	Size		size;

	/*
	 * Currently, the size of the requests[] array is arbitrarily set equal to
	 * NBuffers.  This may prove too large or small ...
	 */
	size = FUNC2(CheckpointerShmemStruct, requests);
	size = FUNC0(size, FUNC1(NBuffers, sizeof(CheckpointerRequest)));

	return size;
}