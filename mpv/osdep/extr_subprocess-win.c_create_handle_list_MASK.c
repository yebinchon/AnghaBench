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
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/ * LPPROC_THREAD_ATTRIBUTE_LIST ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROC_THREAD_ATTRIBUTE_HANDLE_LIST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  delete_handle_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPPROC_THREAD_ATTRIBUTE_LIST FUNC6(void *ctx,
                                                       HANDLE *handles, int num)
{
    // Get required attribute list size
    SIZE_T size = 0;
    if (!FUNC1(NULL, 1, 0, &size)) {
        if (FUNC0() != ERROR_INSUFFICIENT_BUFFER)
            return NULL;
    }

    // Allocate attribute list
    LPPROC_THREAD_ATTRIBUTE_LIST list = FUNC5(ctx, size);
    if (!FUNC1(list, 1, 0, &size))
        goto error;
    FUNC4(list, delete_handle_list);

    if (!FUNC2(list, 0, PROC_THREAD_ATTRIBUTE_HANDLE_LIST,
                                   handles, num * sizeof(HANDLE), NULL, NULL))
        goto error;

    return list;
error:
    FUNC3(list);
    return NULL;
}