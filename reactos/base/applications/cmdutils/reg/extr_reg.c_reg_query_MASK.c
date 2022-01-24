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
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STRING_CANNOT_FIND ; 
 int /*<<< orphan*/  STRING_MATCHES_FOUND ; 
 int /*<<< orphan*/  newlineW ; 
 int /*<<< orphan*/  num_values_found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC6(HKEY root, WCHAR *path, WCHAR *key_name, WCHAR *value_name,
                     BOOL value_empty, BOOL recurse)
{
    HKEY key;
    int ret;

    if (FUNC1(root, path, 0, KEY_READ, &key) != ERROR_SUCCESS)
    {
        FUNC2(STRING_CANNOT_FIND);
        return 1;
    }

    FUNC3(newlineW);

    if (value_name || value_empty)
    {
        ret = FUNC5(key, value_name, key_name, recurse);
        if (recurse)
            FUNC2(STRING_MATCHES_FOUND, num_values_found);
    }
    else
        ret = FUNC4(key, key_name, recurse);

    FUNC0(key);

    return ret;
}