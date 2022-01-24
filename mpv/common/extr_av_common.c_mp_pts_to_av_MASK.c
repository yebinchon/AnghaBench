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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  AVRational ;

/* Variables and functions */
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 double MP_NOPTS_VALUE ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 

int64_t FUNC3(double mp_pts, AVRational *tb)
{
    AVRational b = FUNC1(tb);
    return mp_pts == MP_NOPTS_VALUE ? AV_NOPTS_VALUE : FUNC2(mp_pts / FUNC0(b));
}