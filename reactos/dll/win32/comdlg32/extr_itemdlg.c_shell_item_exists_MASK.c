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
typedef  int /*<<< orphan*/  SFGAOF ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  IShellItem ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SFGAO_VALIDATE ; 
 int /*<<< orphan*/  SIGDN_FILESYSPATH ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(IShellItem* shellitem)
{
    LPWSTR filename;
    HRESULT hr;
    BOOL result;

    hr = FUNC3(shellitem, SIGDN_FILESYSPATH, &filename);
    if (FUNC4(hr))
    {
        /* FIXME: Implement SFGAO_VALIDATE in Wine and use it instead. */
        result = (FUNC1(filename) != INVALID_FILE_ATTRIBUTES);
        FUNC0(filename);
    }
    else
    {
        SFGAOF attributes;
        result = FUNC4(FUNC2(shellitem, SFGAO_VALIDATE, &attributes));
    }

    return result;
}