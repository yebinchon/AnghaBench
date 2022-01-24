#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int iString; } ;
typedef  TYPE_1__ TBUTTON_INFO ;
typedef  int INT_PTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5( TBUTTON_INFO *btn, INT_PTR str, BOOL unicode )
{
    if (!FUNC1( str ) && str != -1)
    {
        if (!FUNC4( btn )) btn->iString = 0;

        if (unicode)
            FUNC3( (WCHAR **)&btn->iString, (WCHAR *)str );
        else
            FUNC2( (WCHAR **)&btn->iString, (char *)str );
    }
    else
    {
        if (FUNC4( btn )) FUNC0( (WCHAR *)btn->iString );

        btn->iString  = str;
    }
}