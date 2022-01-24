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
struct mrb_context {size_t stack; size_t stbase; size_t stend; size_t eidx; int /*<<< orphan*/ * ci; int /*<<< orphan*/ * cibase; int /*<<< orphan*/  status; } ;
struct RObject {int dummy; } ;
struct RHash {int dummy; } ;
struct RFiber {struct mrb_context* cxt; } ;
struct RClass {int dummy; } ;
struct RBasic {int tt; } ;
struct RArray {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_gc ;
typedef  int /*<<< orphan*/  mrb_callinfo ;

/* Variables and functions */
 size_t FUNC0 (struct RArray*) ; 
 size_t FUNC1 (struct RBasic*) ; 
 int /*<<< orphan*/  MRB_FIBER_TERMINATED ; 
#define  MRB_TT_ARRAY 140 
#define  MRB_TT_CLASS 139 
#define  MRB_TT_DATA 138 
#define  MRB_TT_ENV 137 
#define  MRB_TT_EXCEPTION 136 
#define  MRB_TT_FIBER 135 
#define  MRB_TT_HASH 134 
#define  MRB_TT_ICLASS 133 
#define  MRB_TT_MODULE 132 
#define  MRB_TT_OBJECT 131 
#define  MRB_TT_PROC 130 
#define  MRB_TT_RANGE 129 
#define  MRB_TT_SCLASS 128 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct RBasic*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,struct RHash*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,struct RObject*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,struct RClass*) ; 

__attribute__((used)) static size_t
FUNC7(mrb_state *mrb, mrb_gc *gc, struct RBasic *obj)
{
  size_t children = 0;

  FUNC3(mrb, gc, obj);

  switch (obj->tt) {
  case MRB_TT_ICLASS:
    children++;
    break;

  case MRB_TT_CLASS:
  case MRB_TT_SCLASS:
  case MRB_TT_MODULE:
    {
      struct RClass *c = (struct RClass*)obj;

      children += FUNC5(mrb, (struct RObject*)obj);
      children += FUNC6(mrb, c);
      children++;
    }
    break;

  case MRB_TT_OBJECT:
  case MRB_TT_DATA:
  case MRB_TT_EXCEPTION:
    children += FUNC5(mrb, (struct RObject*)obj);
    break;

  case MRB_TT_ENV:
    children += FUNC1(obj);
    break;

  case MRB_TT_FIBER:
    {
      struct mrb_context *c = ((struct RFiber*)obj)->cxt;
      size_t i;
      mrb_callinfo *ci;

      if (!c || c->status == MRB_FIBER_TERMINATED) break;

      /* mark stack */
      i = c->stack - c->stbase;

      if (c->ci) {
        i += FUNC2(c->ci);
      }
      if (c->stbase + i > c->stend) i = c->stend - c->stbase;
      children += i;

      /* mark ensure stack */
      children += c->eidx;

      /* mark closure */
      if (c->cibase) {
        for (i=0, ci = c->cibase; ci <= c->ci; i++, ci++)
          ;
      }
      children += i;
    }
    break;

  case MRB_TT_ARRAY:
    {
      struct RArray *a = (struct RArray*)obj;
      children += FUNC0(a);
    }
    break;

  case MRB_TT_HASH:
    children += FUNC5(mrb, (struct RObject*)obj);
    children += FUNC4(mrb, (struct RHash*)obj);
    break;

  case MRB_TT_PROC:
  case MRB_TT_RANGE:
    children+=2;
    break;

  default:
    break;
  }
  return children;
}