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
typedef  int /*<<< orphan*/ * HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_options ; 
 int /*<<< orphan*/  key_settings ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
    HKEY hKey;

    if(FUNC1(&hKey, 0, key_options) != ERROR_SUCCESS)
        FUNC2(NULL);
    else
    {
        FUNC2(hKey);
        FUNC0(hKey);
    }

    if(FUNC1(&hKey, 0, key_settings) != ERROR_SUCCESS) {
        FUNC3(NULL);
    } else {
        FUNC3(hKey);
        FUNC0(hKey);
    }
}