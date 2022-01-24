#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  web_browser; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ HHInfo ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

BOOL FUNC5(HHInfo *info, LPCWSTR file, LPCWSTR index)
{
    WCHAR buf[INTERNET_MAX_URL_LENGTH];

    FUNC2("%p %s %s\n", info, FUNC3(file), FUNC3(index));

    if ((!info->web_browser) || !FUNC0(file, buf, index))
        return FALSE;

    return FUNC1(FUNC4(info, buf));
}