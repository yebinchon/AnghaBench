#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int len; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (TYPE_1__,char*) ; 

__attribute__((used)) static bool FUNC2(bstr *s)
{
    *s = FUNC0(*s);
    if (FUNC1(*s, "#"))
        s->len = 0;
    return s->len;
}