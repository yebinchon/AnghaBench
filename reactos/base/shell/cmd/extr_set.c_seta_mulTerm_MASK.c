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
typedef  int TCHAR ;
typedef  int* LPCTSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int**,int*) ; 
 int* FUNC3 (int*) ; 

__attribute__((used)) static BOOL
FUNC4(LPCTSTR* p_, INT* result)
{
    LPCTSTR p = *p_;
    TCHAR op = 0;
    INT rval;
    if ( FUNC1(FUNC0("!~-"),*p) )
    {
        op = *p;
        p = FUNC3 ( p + 1 );
    }
    if ( !FUNC2 ( &p, &rval ) )
        return FALSE;
    switch ( op )
    {
    case '!':
        rval = !rval;
        break;
    case '~':
        rval = ~rval;
        break;
    case '-':
        rval = -rval;
        break;
    }

    *result = rval;
    *p_ = p;
    return TRUE;
}