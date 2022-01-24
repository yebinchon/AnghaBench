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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,long,char*) ; 

void *FUNC1(BIO *b, int cmd, long larg)
{
    void *p = NULL;

    if (FUNC0(b, cmd, larg, (char *)&p) <= 0)
        return NULL;
    else
        return p;
}