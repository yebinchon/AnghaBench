#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int length; scalar_t__ p; scalar_t__ q; } ;
typedef  TYPE_1__ DH ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int,int) ; 

int FUNC2(const DH *dh)
{
    int N;
    if (dh->q)
        N = FUNC0(dh->q);
    else if (dh->length)
        N = dh->length;
    else
        N = -1;
    return FUNC1(FUNC0(dh->p), N);
}