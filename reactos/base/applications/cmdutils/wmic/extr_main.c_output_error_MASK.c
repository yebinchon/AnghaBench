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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,char*) ; 

__attribute__((used)) static int FUNC5( int msg )
{
    static const WCHAR fmtW[] = {'%','s',0};
    WCHAR buffer[8192];

    FUNC3( FUNC1(NULL), msg, buffer, FUNC0(buffer));
    return FUNC4( FUNC2(STD_ERROR_HANDLE), fmtW, buffer );
}