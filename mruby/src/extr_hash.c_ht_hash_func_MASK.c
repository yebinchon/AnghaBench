#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t capa; } ;
typedef  TYPE_1__ segindex ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_5__ {TYPE_1__* index; } ;
typedef  TYPE_2__ htable ;
typedef  enum mrb_vtype { ____Placeholder_mrb_vtype } mrb_vtype ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
#define  MRB_TT_FALSE 133 
#define  MRB_TT_FIXNUM 132 
#define  MRB_TT_FLOAT 131 
#define  MRB_TT_STRING 130 
#define  MRB_TT_SYMBOL 129 
#define  MRB_TT_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static /* inline */ size_t
FUNC6(mrb_state *mrb, htable *t, mrb_value key)
{
  enum mrb_vtype tt = FUNC5(key);
  mrb_value hv;
  size_t h;
  segindex *index = t->index;
  size_t capa = index ? index->capa : 0;

  switch (tt) {
  case MRB_TT_STRING:
    h = FUNC4(mrb, key);
    break;

  case MRB_TT_TRUE:
  case MRB_TT_FALSE:
  case MRB_TT_SYMBOL:
  case MRB_TT_FIXNUM:
#ifndef MRB_WITHOUT_FLOAT
  case MRB_TT_FLOAT:
#endif
    h = (size_t)FUNC2(key);
    break;

  default:
    hv = FUNC1(mrb, key, "hash", 0);
    h = (size_t)t ^ (size_t)FUNC0(hv);
    break;
  }
  if (index && (index != t->index || capa != index->capa)) {
    FUNC3(mrb, E_RUNTIME_ERROR, "hash modified");
  }
  return ((h)^((h)<<2)^((h)>>2));
}