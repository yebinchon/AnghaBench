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
typedef  scalar_t__ real ;
typedef  scalar_t__ doublereal ;
struct TYPE_4__ {scalar_t__ r; } ;
typedef  TYPE_1__ complex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

doublereal FUNC2(complex *z__)
{
    /* System generated locals */
    real ret_val, r__1, r__2;


/*
    Purpose
    =======

    SCABS1 computes absolute value of a complex number

    =====================================================================
*/

    ret_val = (r__1 = z__->r, FUNC0(r__1)) + (r__2 = FUNC1(z__), FUNC0(r__2));
    return ret_val;
}