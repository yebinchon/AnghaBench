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
struct mp_pin {struct mp_filter* manual_connection; scalar_t__ within_conn; } ;
struct mp_filter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_pin*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_pin*) ; 

void FUNC2(struct mp_pin *p, struct mp_filter *f)
{
    if (p->manual_connection == f)
        return;
    if (p->within_conn)
        FUNC1(p);
    p->manual_connection = f;
    FUNC0(p);
}