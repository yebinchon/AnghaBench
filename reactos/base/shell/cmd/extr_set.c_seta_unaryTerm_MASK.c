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
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  scalar_t__* LPCTSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  STRING_EXPECTED_CLOSE_PAREN ; 
 int /*<<< orphan*/  STRING_EXPECTED_NUMBER_OR_VARIABLE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__**,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC8 (scalar_t__*) ; 

__attribute__((used)) static BOOL
FUNC9(LPCTSTR* p_, INT* result)
{
    LPCTSTR p = *p_;
    if ( *p == FUNC2('(') )
    {
        INT rval;
        p = FUNC8 ( p + 1 );
        if ( !FUNC7 ( &p, &rval ) )
            return FALSE;
        if ( *p++ != FUNC2(')') )
        {
            FUNC0 ( STRING_EXPECTED_CLOSE_PAREN );
            return FALSE;
        }
        *result = rval;
    }
    else if ( FUNC5(*p) )
    {
        *result = FUNC4 ( p, (LPTSTR *)&p, 0 );
    }
    else if ( FUNC3(*p) )
    {
        LPTSTR ident;
        INT identlen;
        FUNC1(ident,identlen,p);
        *result = FUNC6 ( ident );
    }
    else
    {
        FUNC0 ( STRING_EXPECTED_NUMBER_OR_VARIABLE );
        return FALSE;
    }
    *p_ = FUNC8 ( p );
    return TRUE;
}