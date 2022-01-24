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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC3(LPWSTR name)
{
    static const WCHAR prefix[] = {'a','v','p',0};
    WCHAR tmp_dir[MAX_PATH];

    if(!FUNC2(FUNC0(tmp_dir), tmp_dir))
       return FALSE;

    if(!FUNC1(tmp_dir, prefix, 0, name))
        return FALSE;
    return TRUE;
}