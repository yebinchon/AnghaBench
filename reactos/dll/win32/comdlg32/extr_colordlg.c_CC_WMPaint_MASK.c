#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC9( CCPRIV *lpp )
{
    PAINTSTRUCT ps;

    FUNC0(lpp->hwndSelf, &ps);
    /* we have to paint dialog children except text and buttons */
    FUNC4(lpp, 6, 8);
    FUNC7(lpp, 2, 8);
    FUNC3(lpp);
    FUNC6(lpp);
    FUNC5(lpp);
    FUNC1(lpp);
    FUNC2(lpp);
    FUNC8(lpp->hwndSelf, &ps);

    return TRUE;
}