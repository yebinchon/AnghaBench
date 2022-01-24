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
struct TYPE_3__ {int num; struct demangle_component* sub; } ;
struct TYPE_4__ {TYPE_1__ s_unary_num; } ;
struct demangle_component {TYPE_2__ u; int /*<<< orphan*/  type; } ;
struct d_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_LAMBDA ; 
 int /*<<< orphan*/  FUNC0 (struct d_info*,struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,char) ; 
 int FUNC2 (struct d_info*) ; 
 struct demangle_component* FUNC3 (struct d_info*) ; 
 struct demangle_component* FUNC4 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC5 (struct d_info *di)
{
  struct demangle_component *tl;
  struct demangle_component *ret;
  int num;

  if (! FUNC1 (di, 'U'))
    return NULL;
  if (! FUNC1 (di, 'l'))
    return NULL;

  tl = FUNC4 (di);
  if (tl == NULL)
    return NULL;

  if (! FUNC1 (di, 'E'))
    return NULL;

  num = FUNC2 (di);
  if (num < 0)
    return NULL;

  ret = FUNC3 (di);
  if (ret)
    {
      ret->type = DEMANGLE_COMPONENT_LAMBDA;
      ret->u.s_unary_num.sub = tl;
      ret->u.s_unary_num.num = num;
    }

  if (! FUNC0 (di, ret))
    return NULL;

  return ret;
}