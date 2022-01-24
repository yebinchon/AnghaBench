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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * currentKeyHandle ; 
 int /*<<< orphan*/  currentKeyName ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static LONG FUNC3(WCHAR* stdInput)
{
    HKEY keyClass;
    WCHAR* keyPath;
    DWORD dwDisp;
    LONG res;

    /* Sanity checks */
    if (stdInput == NULL)
        return ERROR_INVALID_PARAMETER;

    /* Get the registry class */
    if (!FUNC2(stdInput, &keyClass, &keyPath))
        return ERROR_INVALID_PARAMETER;

    res = FUNC1(
               keyClass,                 /* Class     */
               keyPath,                  /* Sub Key   */
               0,                        /* MUST BE 0 */
               NULL,                     /* object type */
               REG_OPTION_NON_VOLATILE,  /* option, REG_OPTION_NON_VOLATILE ... */
               KEY_ALL_ACCESS,           /* access mask, KEY_ALL_ACCESS */
               NULL,                     /* security attribute */
               &currentKeyHandle,        /* result */
               &dwDisp);                 /* disposition, REG_CREATED_NEW_KEY or
                                                        REG_OPENED_EXISTING_KEY */

    if (res == ERROR_SUCCESS)
        currentKeyName = FUNC0(stdInput);
    else
        currentKeyHandle = NULL;

    return res;

}