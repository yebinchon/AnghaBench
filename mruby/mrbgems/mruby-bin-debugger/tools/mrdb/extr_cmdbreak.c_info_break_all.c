
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int dbg; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
typedef int mrb_debug_breakpoint ;
typedef int int32_t ;


 int BREAK_ERR_MSG_NOBPNO_INFOALL ;
 int BREAK_INFO_MSG_HEADER ;
 int MRB_DEBUG_OK ;
 int mrb_debug_get_break_all (int *,int ,int ,int *) ;
 int mrb_debug_get_breaknum (int *,int ) ;
 int mrb_free (int *,int *) ;
 scalar_t__ mrb_malloc (int *,int) ;
 int print_api_common_error (int) ;
 int print_breakpoint (int *) ;
 int puts (int ) ;

__attribute__((used)) static void
info_break_all(mrb_state *mrb, mrdb_state *mrdb)
{
  int32_t bpnum = 0;
  int32_t i = 0;
  int32_t ret = MRB_DEBUG_OK;
  mrb_debug_breakpoint *bp_list;

  bpnum = mrb_debug_get_breaknum(mrb, mrdb->dbg);
  if (bpnum < 0) {
    print_api_common_error(bpnum);
    return;
  }
  else if (bpnum == 0) {
    puts(BREAK_ERR_MSG_NOBPNO_INFOALL);
    return;
  }
  bp_list = (mrb_debug_breakpoint*)mrb_malloc(mrb, bpnum * sizeof(mrb_debug_breakpoint));

  ret = mrb_debug_get_break_all(mrb, mrdb->dbg, (uint32_t)bpnum, bp_list);
  if (ret < 0) {
    print_api_common_error(ret);
    return;
  }
  puts(BREAK_INFO_MSG_HEADER);
  for(i = 0 ; i < bpnum ; i++) {
    print_breakpoint(&bp_list[i]);
  }

  mrb_free(mrb, bp_list);
}
