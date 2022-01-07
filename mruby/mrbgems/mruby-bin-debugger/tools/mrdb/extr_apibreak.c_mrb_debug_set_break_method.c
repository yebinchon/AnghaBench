
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_9__ {scalar_t__ bpnum; scalar_t__ next_bpno; TYPE_3__* bp; } ;
typedef TYPE_4__ mrb_debug_context ;
typedef size_t int32_t ;
struct TYPE_6__ {char* method_name; char* class_name; } ;
struct TYPE_7__ {TYPE_1__ methodpoint; } ;
struct TYPE_8__ {scalar_t__ bpno; TYPE_2__ point; int type; int enable; } ;


 scalar_t__ MAX_BREAKPOINT ;
 scalar_t__ MAX_BREAKPOINTNO ;
 int MRB_DEBUG_BPTYPE_METHOD ;
 size_t MRB_DEBUG_BREAK_NO_OVER ;
 size_t MRB_DEBUG_BREAK_NUM_OVER ;
 size_t MRB_DEBUG_INVALID_ARGUMENT ;
 int TRUE ;
 scalar_t__ mrb_malloc (int *,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char*,char const*,scalar_t__) ;

int32_t
mrb_debug_set_break_method(mrb_state *mrb, mrb_debug_context *dbg, const char *class_name, const char *method_name)
{
  int32_t index;
  char* set_class;
  char* set_method;

  if ((mrb == ((void*)0)) || (dbg == ((void*)0)) || (method_name == ((void*)0))) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  if (dbg->bpnum >= MAX_BREAKPOINT) {
    return MRB_DEBUG_BREAK_NUM_OVER;
  }

  if (dbg->next_bpno > MAX_BREAKPOINTNO) {
    return MRB_DEBUG_BREAK_NO_OVER;
  }

  if (class_name != ((void*)0)) {
    set_class = (char*)mrb_malloc(mrb, strlen(class_name) + 1);
    strncpy(set_class, class_name, strlen(class_name) + 1);
  }
  else {
    set_class = ((void*)0);
  }

  set_method = (char*)mrb_malloc(mrb, strlen(method_name) + 1);

  strncpy(set_method, method_name, strlen(method_name) + 1);

  index = dbg->bpnum;
  dbg->bp[index].bpno = dbg->next_bpno;
  dbg->next_bpno++;
  dbg->bp[index].enable = TRUE;
  dbg->bp[index].type = MRB_DEBUG_BPTYPE_METHOD;
  dbg->bp[index].point.methodpoint.method_name = set_method;
  dbg->bp[index].point.methodpoint.class_name = set_class;
  dbg->bpnum++;

  return dbg->bp[index].bpno;
}
