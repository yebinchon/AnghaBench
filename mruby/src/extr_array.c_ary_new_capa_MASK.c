#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int capa; } ;
struct TYPE_10__ {scalar_t__ len; TYPE_1__ aux; int /*<<< orphan*/ * ptr; } ;
struct TYPE_11__ {TYPE_2__ heap; } ;
struct RArray {TYPE_3__ as; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_12__ {int /*<<< orphan*/  array_class; } ;
typedef  TYPE_4__ mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 int ARY_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct RArray*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int MRB_ARY_EMBED_LEN_MAX ; 
 int /*<<< orphan*/  MRB_TT_ARRAY ; 
 scalar_t__ FUNC1 (TYPE_4__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct RArray*
FUNC4(mrb_state *mrb, mrb_int capa)
{
  struct RArray *a;
  size_t blen;

  if (capa > ARY_MAX_SIZE) {
    FUNC3(mrb, E_ARGUMENT_ERROR, "array size too big");
  }
  blen = capa * sizeof(mrb_value);

  a = (struct RArray*)FUNC2(mrb, MRB_TT_ARRAY, mrb->array_class);
  if (capa <= MRB_ARY_EMBED_LEN_MAX) {
    FUNC0(a, 0);
  }
  else {
    a->as.heap.ptr = (mrb_value *)FUNC1(mrb, blen);
    a->as.heap.aux.capa = capa;
    a->as.heap.len = 0;
  }

  return a;
}