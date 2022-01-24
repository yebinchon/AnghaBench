#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsval_type_t ;
struct TYPE_6__ {int /*<<< orphan*/  tag; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; TYPE_2__ u; } ;
typedef  TYPE_3__ jsval_t ;

/* Variables and functions */
 int /*<<< orphan*/  JSV_NUMBER ; 
 scalar_t__ FUNC0 (TYPE_3__) ; 

__attribute__((used)) static inline jsval_type_t FUNC1(jsval_t v)
{
#ifdef JSVAL_DOUBLE_LAYOUT_PTR32
    return is_number(v) ? JSV_NUMBER : v.u.s.tag;
#else
    return v.type;
#endif
}