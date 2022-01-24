#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int character; } ;
struct TYPE_4__ {TYPE_1__ s_character; } ;
struct demangle_component {TYPE_2__ u; int /*<<< orphan*/  type; } ;
struct d_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_CHARACTER ; 
 struct demangle_component* FUNC0 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC1 (struct d_info *di, int c)
{
  struct demangle_component *p;
  p = FUNC0 (di);
  if (p != NULL)
    {
      p->type = DEMANGLE_COMPONENT_CHARACTER;
      p->u.s_character.character = c;
    }
  return p;
}