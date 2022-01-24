#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__* attribs; scalar_t__ name; int /*<<< orphan*/  label; } ;
typedef  TYPE_1__ m_obj_settings_t ;
struct TYPE_9__ {scalar_t__ len; } ;
typedef  TYPE_2__ bstr ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__,TYPE_2__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(m_obj_settings_t *a, m_obj_settings_t *b)
{
    bstr la = FUNC0(a->label), lb = FUNC0(b->label);
    if (la.len || lb.len)
        return FUNC1(la, lb);
    if (FUNC2(a->name, b->name) != 0)
        return false;

    int a_attr_count = 0;
    while (a->attribs && a->attribs[a_attr_count])
        a_attr_count++;
    int b_attr_count = 0;
    while (b->attribs && b->attribs[b_attr_count])
        b_attr_count++;
    if (a_attr_count != b_attr_count)
        return false;
    for (int n = 0; n < a_attr_count; n++) {
        if (FUNC2(a->attribs[n], b->attribs[n]) != 0)
            return false;
    }
    return true;
}