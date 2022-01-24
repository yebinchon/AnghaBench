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
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPCTSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 

__attribute__((used)) static BOOL
FUNC3(LPCTSTR* p_, INT* result, LPCTSTR ops, BOOL (*subTerm)(LPCTSTR*,INT*))
{
    LPCTSTR p = *p_;
    INT lval;
    if ( !subTerm ( &p, &lval ) )
        return FALSE;
    while ( *p && FUNC0(ops,*p) )
    {
        INT rval;
        TCHAR op = *p;

        p = FUNC2 ( p+1 );

        if ( !subTerm ( &p, &rval ) )
            return FALSE;

        if ( !FUNC1 ( &lval, op, rval ) )
            return FALSE;
    }

    *result = lval;
    *p_ = p;
    return TRUE;
}