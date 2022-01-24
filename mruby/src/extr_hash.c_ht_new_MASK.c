#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_3__ {int /*<<< orphan*/ * index; scalar_t__ last_len; int /*<<< orphan*/ * lastseg; int /*<<< orphan*/ * rootseg; scalar_t__ size; } ;
typedef  TYPE_1__ htable ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static htable*
FUNC1(mrb_state *mrb)
{
  htable *t;

  t = (htable*)FUNC0(mrb, sizeof(htable));
  t->size = 0;
  t->rootseg =  NULL;
  t->lastseg =  NULL;
  t->last_len = 0;
  t->index = NULL;

  return t;
}