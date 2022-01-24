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
typedef  int /*<<< orphan*/  uint32_t ;
struct vo {TYPE_1__* x11; } ;
struct TYPE_2__ {int /*<<< orphan*/  display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,char const*,int) ; 
 int None ; 
 int VO_FALSE ; 
 int VO_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (struct vo*,int /*<<< orphan*/ ,char const*,int,int*,int*) ; 

__attribute__((used)) static int FUNC3(struct vo *vo, uint32_t xv_port, const char *name,
                     int *value)
{
    int min, max;
    int atom = FUNC2(vo, xv_port, name, true, &min, &max);
    if (atom != None) {
        int port_value = 0;
        FUNC1(vo->x11->display, xv_port, atom, &port_value);

        *value = (port_value - min) * 200 / (max - min) - 100;
        FUNC0(vo, "xv_get_eq called! (%s, %d)\n", name, *value);
        return VO_TRUE;
    }
    return VO_FALSE;
}