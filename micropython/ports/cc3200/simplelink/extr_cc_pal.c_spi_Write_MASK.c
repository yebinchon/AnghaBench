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
typedef  int Fd_t ;

/* Variables and functions */
 int g_SpiFd ; 
 int FUNC0 (unsigned char*,int) ; 

int FUNC1(Fd_t fd, unsigned char *pBuff, int len)
{
    if (fd != 1 || g_SpiFd != 1) {
        return -1;
    }

    return FUNC0(pBuff,len);
}