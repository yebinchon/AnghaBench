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
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(FILE *file, const WCHAR* str, BOOL unicode)
{
    if(unicode)
    {
        FUNC4(str, sizeof(WCHAR), FUNC5(str), file);
    } else
    {
        char* strA = FUNC0(str);
        FUNC3(strA, file);
        FUNC2(FUNC1(), 0, strA);
    }
}