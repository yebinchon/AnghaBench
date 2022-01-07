
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mrb_context {int dummy; } ;
struct TYPE_10__ {scalar_t__ fshared; } ;
struct TYPE_11__ {TYPE_3__ aux; } ;
struct TYPE_12__ {TYPE_4__ heap; } ;
struct RString {TYPE_5__ as; } ;
struct RRange {int dummy; } ;
struct TYPE_8__ {scalar_t__ env; } ;
struct RProc {TYPE_1__ e; scalar_t__ upper; } ;
struct RObject {int dummy; } ;
struct RHash {int dummy; } ;
struct RFiber {struct mrb_context* cxt; } ;
struct REnv {int * stack; TYPE_2__* cxt; } ;
struct RClass {scalar_t__ super; } ;
struct RBasic {int tt; scalar_t__ c; int gcnext; } ;
struct RArray {int dummy; } ;
typedef int mrb_state ;
typedef size_t mrb_int ;
struct TYPE_13__ {int gray_list; } ;
typedef TYPE_6__ mrb_gc ;
struct TYPE_9__ {scalar_t__ fib; } ;


 size_t ARY_LEN (struct RArray*) ;
 int * ARY_PTR (struct RArray*) ;
 size_t MRB_ENV_STACK_LEN (struct REnv*) ;
 int MRB_ENV_STACK_SHARED_P (struct REnv*) ;
 int MRB_FLAG_TEST (struct RClass*,int ) ;
 int MRB_FL_CLASS_IS_ORIGIN ;
 int RSTR_FSHARED_P (struct RBasic*) ;
 int is_gray (struct RBasic*) ;
 int mark_context (int *,struct mrb_context*) ;
 int mrb_assert (int ) ;
 int mrb_gc_mark (int *,struct RBasic*) ;
 int mrb_gc_mark_hash (int *,struct RHash*) ;
 int mrb_gc_mark_iv (int *,struct RObject*) ;
 int mrb_gc_mark_mt (int *,struct RClass*) ;
 int mrb_gc_mark_range (int *,struct RRange*) ;
 int mrb_gc_mark_value (int *,int ) ;
 int paint_black (struct RBasic*) ;

__attribute__((used)) static void
gc_mark_children(mrb_state *mrb, mrb_gc *gc, struct RBasic *obj)
{
  mrb_assert(is_gray(obj));
  paint_black(obj);
  gc->gray_list = obj->gcnext;
  mrb_gc_mark(mrb, (struct RBasic*)obj->c);
  switch (obj->tt) {
  case 134:
    {
      struct RClass *c = (struct RClass*)obj;
      if (MRB_FLAG_TEST(c, MRB_FL_CLASS_IS_ORIGIN))
        mrb_gc_mark_mt(mrb, c);
      mrb_gc_mark(mrb, (struct RBasic*)((struct RClass*)obj)->super);
    }
    break;

  case 140:
  case 133:
  case 129:
    {
      struct RClass *c = (struct RClass*)obj;

      mrb_gc_mark_mt(mrb, c);
      mrb_gc_mark(mrb, (struct RBasic*)c->super);
    }


  case 132:
  case 139:
  case 137:
    mrb_gc_mark_iv(mrb, (struct RObject*)obj);
    break;

  case 131:
    {
      struct RProc *p = (struct RProc*)obj;

      mrb_gc_mark(mrb, (struct RBasic*)p->upper);
      mrb_gc_mark(mrb, (struct RBasic*)p->e.env);
    }
    break;

  case 138:
    {
      struct REnv *e = (struct REnv*)obj;
      mrb_int i, len;

      if (MRB_ENV_STACK_SHARED_P(e) && e->cxt && e->cxt->fib) {
        mrb_gc_mark(mrb, (struct RBasic*)e->cxt->fib);
      }
      len = MRB_ENV_STACK_LEN(e);
      for (i=0; i<len; i++) {
        mrb_gc_mark_value(mrb, e->stack[i]);
      }
    }
    break;

  case 136:
    {
      struct mrb_context *c = ((struct RFiber*)obj)->cxt;

      if (c) mark_context(mrb, c);
    }
    break;

  case 141:
    {
      struct RArray *a = (struct RArray*)obj;
      size_t i, e;

      for (i=0,e=ARY_LEN(a); i<e; i++) {
        mrb_gc_mark_value(mrb, ARY_PTR(a)[i]);
      }
    }
    break;

  case 135:
    mrb_gc_mark_iv(mrb, (struct RObject*)obj);
    mrb_gc_mark_hash(mrb, (struct RHash*)obj);
    break;

  case 128:
    if (RSTR_FSHARED_P(obj)) {
      struct RString *s = (struct RString*)obj;
      mrb_gc_mark(mrb, (struct RBasic*)s->as.heap.aux.fshared);
    }
    break;

  case 130:
    mrb_gc_mark_range(mrb, (struct RRange*)obj);
    break;

  default:
    break;
  }
}
