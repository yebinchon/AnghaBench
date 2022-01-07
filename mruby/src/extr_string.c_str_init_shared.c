
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* shared; int capa; } ;
struct TYPE_7__ {TYPE_1__ aux; int len; int ptr; } ;
struct TYPE_8__ {TYPE_2__ heap; } ;
struct RString {TYPE_3__ as; } ;
typedef int mrb_state ;
struct TYPE_9__ {int refcnt; int capa; int ptr; } ;
typedef TYPE_4__ mrb_shared_string ;


 int RSTR_SET_TYPE_FLAG (struct RString*,int ) ;
 int SHARED ;
 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static struct RString*
str_init_shared(mrb_state *mrb, const struct RString *orig, struct RString *s, mrb_shared_string *shared)
{
  if (shared) {
    shared->refcnt++;
  }
  else {
    shared = (mrb_shared_string *)mrb_malloc(mrb, sizeof(mrb_shared_string));
    shared->refcnt = 1;
    shared->ptr = orig->as.heap.ptr;
    shared->capa = orig->as.heap.aux.capa;
  }
  s->as.heap.ptr = orig->as.heap.ptr;
  s->as.heap.len = orig->as.heap.len;
  s->as.heap.aux.shared = shared;
  RSTR_SET_TYPE_FLAG(s, SHARED);
  return s;
}
