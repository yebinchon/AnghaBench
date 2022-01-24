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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int BUFFILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  edt1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC4(HWND hwnd)
{
    WCHAR temp[BUFFILE], *cp;

    FUNC1( hwnd, edt1, temp, FUNC0(temp));
    cp = FUNC3(temp, '\\');
    if (cp != NULL) {
	FUNC2(temp, cp+1);
    }
    cp = FUNC3(temp, ':');
    if (cp != NULL) {
	FUNC2(temp, cp+1);
    }
    /* FIXME: shouldn't we do something with the result here? ;-) */
}