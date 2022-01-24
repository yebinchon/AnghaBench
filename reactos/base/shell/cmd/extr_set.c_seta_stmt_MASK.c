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
typedef  scalar_t__* LPCTSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__**,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 

__attribute__((used)) static BOOL
FUNC3(LPCTSTR* p_, INT* result)
{
    LPCTSTR p = *p_;
    INT rval;

    if ( !FUNC1 ( &p, &rval ) )
        return FALSE;
    while ( *p == FUNC0(',') )
    {
        p = FUNC2 ( p+1 );

        if ( !FUNC1 ( &p, &rval ) )
            return FALSE;
    }

    *result = rval;
    *p_ = p;
    return TRUE;
}