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
typedef  int /*<<< orphan*/  uint32_t ;
struct vo {int dummy; } ;

/* Variables and functions */
 int VO_EVENT_RESIZE ; 
 int FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,int) ; 
 int FUNC2 (struct vo*,int*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC3(struct vo *vo, uint32_t request, void *data)
{
    int events = 0;
    int ret = FUNC2(vo, &events, request, data);

    if (events & VO_EVENT_RESIZE)
        ret = FUNC0(vo);
    FUNC1(vo, events);
    return ret;
}