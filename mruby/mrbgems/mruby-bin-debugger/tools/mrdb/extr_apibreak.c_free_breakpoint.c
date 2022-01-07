
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_7__ {int * class_name; scalar_t__ method_name; } ;
struct TYPE_6__ {scalar_t__ file; } ;
struct TYPE_8__ {TYPE_2__ methodpoint; TYPE_1__ linepoint; } ;
struct TYPE_9__ {int type; TYPE_3__ point; } ;
typedef TYPE_4__ mrb_debug_breakpoint ;




 int mrb_free (int *,void*) ;

__attribute__((used)) static void
free_breakpoint(mrb_state *mrb, mrb_debug_breakpoint *bp)
{
  switch(bp->type) {
    case 129:
      mrb_free(mrb, (void*)bp->point.linepoint.file);
      break;
    case 128:
      mrb_free(mrb, (void*)bp->point.methodpoint.method_name);
      if (bp->point.methodpoint.class_name != ((void*)0)) {
        mrb_free(mrb, (void*)bp->point.methodpoint.class_name);
      }
      break;
    default:
      break;
  }
}
