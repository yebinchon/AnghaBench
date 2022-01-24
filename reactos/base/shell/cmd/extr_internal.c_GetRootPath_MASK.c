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
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/ * FUNC2 (int,scalar_t__*,int) ; 

INT FUNC3(TCHAR *InPath,TCHAR *OutPath,INT size)
{
    if (InPath[0] && InPath[1] == FUNC1(':'))
    {
        INT t=0;

        if ((InPath[0] >= FUNC1('0')) && (InPath[0] <= FUNC1('9')))
        {
            t = (InPath[0] - FUNC1('0')) +28;
        }

        if ((InPath[0] >= FUNC1('a')) && (InPath[0] <= FUNC1('z')))
        {
            t = (InPath[0] - FUNC1('a')) +1;
            InPath[0] = t + FUNC1('A') - 1;
        }

        if ((InPath[0] >= FUNC1('A')) && (InPath[0] <= FUNC1('Z')))
        {
            t = (InPath[0] - FUNC1('A')) +1;
        }

        return FUNC2(t,OutPath,size) == NULL;
    }

    /* Get current directory */
    return !FUNC0(size,OutPath);
}