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

/* Variables and functions */
 int SOCKET_ERROR ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC3(int s, char *buffer, int len)
{
    int iret;
    while(len) {
        if(SOCKET_ERROR==(iret=FUNC2(s, buffer, len, 0)))
        {
            iret=FUNC0 ();
            FUNC1(stdout,"fputcSocket: %d\n",iret);
            return 0;
        }
        else {
            return len-=iret;
        }
    }
    return 0;
}