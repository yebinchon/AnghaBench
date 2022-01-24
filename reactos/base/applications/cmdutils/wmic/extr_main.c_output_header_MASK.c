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
typedef  int /*<<< orphan*/  bomW ;
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const*,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int*,int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ,int const*) ; 

__attribute__((used)) static int FUNC5( const WCHAR *prop, ULONG column_width )
{
    static const WCHAR bomW[] = {0xfeff}, fmtW[] = {'%','-','*','s','\r','\n',0};
    int len;
    DWORD count;
    WCHAR buffer[8192];

    len = FUNC4( buffer, FUNC0(buffer), fmtW, column_width, prop );

    if (!FUNC2( FUNC1(STD_OUTPUT_HANDLE), buffer, len, &count, NULL )) /* redirected */
    {
        FUNC3( FUNC1(STD_OUTPUT_HANDLE), bomW, sizeof(bomW), &count, FALSE );
        FUNC3( FUNC1(STD_OUTPUT_HANDLE), buffer, len * sizeof(WCHAR), &count, FALSE );
        count += sizeof(bomW);
    }

    return count;
}