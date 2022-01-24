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
struct ao {int dummy; } ;
typedef  enum aocontrol { ____Placeholder_aocontrol } aocontrol ;

/* Variables and functions */
#define  AOCONTROL_GET_VOLUME 129 
#define  AOCONTROL_SET_VOLUME 128 
 int CONTROL_UNKNOWN ; 
 int FUNC0 (struct ao*,void*) ; 
 int FUNC1 (struct ao*,void*) ; 

__attribute__((used)) static int FUNC2(struct ao *ao, enum aocontrol cmd, void *arg)
{
    switch (cmd) {
    case AOCONTROL_GET_VOLUME:
        return FUNC0(ao, arg);
    case AOCONTROL_SET_VOLUME:
        return FUNC1(ao, arg);
    }
    return CONTROL_UNKNOWN;
}