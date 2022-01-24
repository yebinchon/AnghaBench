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
 int errno ; 
 int FUNC0 (size_t,int,void**) ; 

void *FUNC1 (size_t size, int type)
{
    int rc;
    void *result;

    rc = FUNC0 (size, type, &result);
    if (rc == 0)
        return result;
    errno = -rc;
    return NULL;
}