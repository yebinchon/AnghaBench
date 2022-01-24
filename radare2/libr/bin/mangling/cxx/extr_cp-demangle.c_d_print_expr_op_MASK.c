#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* op; } ;
struct TYPE_6__ {TYPE_2__ s_operator; } ;
struct demangle_component {scalar_t__ type; TYPE_3__ u; } ;
struct d_print_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_OPERATOR ; 
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,int,struct demangle_component*) ; 

__attribute__((used)) static void
FUNC2 (struct d_print_info *dpi, int options,
                 struct demangle_component *dc)
{
  if (dc->type == DEMANGLE_COMPONENT_OPERATOR)
    FUNC0 (dpi, dc->u.s_operator.op->name,
		     dc->u.s_operator.op->len);
  else
    FUNC1 (dpi, options, dc);
}