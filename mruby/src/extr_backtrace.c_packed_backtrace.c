
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct backtrace_location {int dummy; } ;
struct RData {unsigned int flags; } ;
typedef TYPE_2__* ptrdiff_t ;
typedef int mrb_value ;
struct TYPE_11__ {TYPE_1__* c; } ;
typedef TYPE_3__ mrb_state ;
struct TYPE_10__ {int pc; } ;
struct TYPE_9__ {int cibase; TYPE_2__* ci; } ;


 int bt_type ;
 int count_backtrace_i ;
 int each_backtrace (TYPE_3__*,TYPE_2__*,int ,int ,...) ;
 struct RData* mrb_data_object_alloc (TYPE_3__*,int *,void*,int *) ;
 void* mrb_malloc (TYPE_3__*,int) ;
 int mrb_obj_value (struct RData*) ;
 int pack_backtrace_i ;

__attribute__((used)) static mrb_value
packed_backtrace(mrb_state *mrb)
{
  struct RData *backtrace;
  ptrdiff_t ciidx = mrb->c->ci - mrb->c->cibase;
  int len = 0;
  int size;
  void *ptr;

  each_backtrace(mrb, ciidx, mrb->c->ci->pc, count_backtrace_i, &len);
  size = len * sizeof(struct backtrace_location);
  ptr = mrb_malloc(mrb, size);
  backtrace = mrb_data_object_alloc(mrb, ((void*)0), ptr, &bt_type);
  backtrace->flags = (unsigned int)len;
  each_backtrace(mrb, ciidx, mrb->c->ci->pc, pack_backtrace_i, &ptr);
  return mrb_obj_value(backtrace);
}
