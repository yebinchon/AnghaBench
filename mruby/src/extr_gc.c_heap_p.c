
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct RBasic {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_2__ mrb_heap_page ;
struct TYPE_10__ {TYPE_2__* heaps; } ;
typedef TYPE_3__ mrb_gc ;
typedef int mrb_bool ;
struct TYPE_8__ {struct RBasic basic; } ;
struct TYPE_11__ {TYPE_1__ as; } ;
typedef TYPE_4__ RVALUE ;


 int FALSE ;
 size_t MRB_HEAP_PAGE_SIZE ;
 int TRUE ;
 TYPE_4__* objects (TYPE_2__*) ;

__attribute__((used)) static mrb_bool
heap_p(mrb_gc *gc, struct RBasic *object)
{
  mrb_heap_page* page;

  page = gc->heaps;
  while (page) {
    RVALUE *p;

    p = objects(page);
    if (&p[0].as.basic <= object && object <= &p[MRB_HEAP_PAGE_SIZE].as.basic) {
      return TRUE;
    }
    page = page->next;
  }
  return FALSE;
}
