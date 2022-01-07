
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int method_name; int * class_name; } ;
struct TYPE_6__ {int lineno; int * file; } ;
struct TYPE_8__ {TYPE_2__ methodpoint; TYPE_1__ linepoint; } ;
struct TYPE_9__ {scalar_t__ type; size_t enable; TYPE_3__ point; int bpno; } ;
typedef TYPE_4__ mrb_debug_breakpoint ;


 char const* BREAK_INFO_MSG_DISABLE ;
 char const* BREAK_INFO_MSG_ENABLE ;
 char* BREAK_INFO_MSG_LINEBREAK ;
 char* BREAK_INFO_MSG_METHODBREAK ;
 char* BREAK_INFO_MSG_METHODBREAK_NOCLASS ;
 scalar_t__ MRB_DEBUG_BPTYPE_LINE ;
 int printf (char*,int ,char const*,int *,...) ;

__attribute__((used)) static void
print_breakpoint(mrb_debug_breakpoint *bp)
{
  const char* enable_letter[] = {BREAK_INFO_MSG_DISABLE, BREAK_INFO_MSG_ENABLE};

  if (bp->type == MRB_DEBUG_BPTYPE_LINE) {
    printf(BREAK_INFO_MSG_LINEBREAK,
      bp->bpno, enable_letter[bp->enable], bp->point.linepoint.file, bp->point.linepoint.lineno);
  }
  else {
    if (bp->point.methodpoint.class_name == ((void*)0)) {
      printf(BREAK_INFO_MSG_METHODBREAK_NOCLASS,
        bp->bpno, enable_letter[bp->enable], bp->point.methodpoint.method_name);
    }
    else {
      printf(BREAK_INFO_MSG_METHODBREAK,
        bp->bpno, enable_letter[bp->enable], bp->point.methodpoint.class_name, bp->point.methodpoint.method_name);
    }
  }
}
