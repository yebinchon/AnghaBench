#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* control ) (struct vo*,int,void*) ;} ;

/* Variables and functions */
 int FUNC0 (struct vo*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 

__attribute__((used)) static void FUNC2(void *p)
{
    void **pp = p;
    struct vo *vo = pp[0];
    int request = (intptr_t)pp[1];
    void *data = pp[2];
    FUNC1(vo);
    int ret = vo->driver->control(vo, request, data);
    if (pp[3])
        *(int *)pp[3] = ret;
}