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
struct mp_frame {int dummy; } ;
struct mp_pin {struct mp_frame data; } ;

/* Variables and functions */
 struct mp_frame MP_NO_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct mp_pin*) ; 

struct mp_frame FUNC1(struct mp_pin *p)
{
    if (!FUNC0(p))
        return MP_NO_FRAME;
    struct mp_frame res = p->data;
    p->data = MP_NO_FRAME;
    return res;
}