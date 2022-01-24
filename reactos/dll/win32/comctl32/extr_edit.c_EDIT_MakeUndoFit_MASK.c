#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_3__ {int undo_buffer_size; int /*<<< orphan*/  undo_text; } ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static BOOL FUNC5(EDITSTATE *es, UINT size)
{
	UINT alloc_size;

	if (size <= es->undo_buffer_size)
		return TRUE;

	FUNC3("trying to ReAlloc to %d+1\n", size);

	alloc_size = FUNC2((size + 1) * sizeof(WCHAR));
	if ((es->undo_text = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, es->undo_text, alloc_size))) {
		es->undo_buffer_size = alloc_size/sizeof(WCHAR) - 1;
		return TRUE;
	}
	else
	{
		FUNC4("FAILED !  We now have %d+1\n", es->undo_buffer_size);
		return FALSE;
	}
}