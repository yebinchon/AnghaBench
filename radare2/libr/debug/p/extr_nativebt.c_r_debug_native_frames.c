
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut64 ;
struct frames_proxy_args {int member_2; TYPE_1__* member_1; int * (* member_0 ) (TYPE_1__*,int ) ;} ;
struct TYPE_11__ {scalar_t__ bits; int call_frames; scalar_t__ btalgo; } ;
typedef int RList ;
typedef int * (* RDebugFrameCallback ) (TYPE_1__*,int ) ;
typedef TYPE_1__ RDebug ;


 scalar_t__ R_SYS_BITS_64 ;
 int * backtrace_fuzzy (TYPE_1__*,int ) ;
 int backtrace_proxy ;
 int * backtrace_x86_32 (TYPE_1__*,int ) ;
 int * backtrace_x86_32_anal (TYPE_1__*,int ) ;
 int * backtrace_x86_64 (TYPE_1__*,int ) ;
 int * backtrace_x86_64_anal (TYPE_1__*,int ) ;
 int prepend_current_pc (TYPE_1__*,int *) ;
 int * r_debug_ptrace_func (TYPE_1__*,int ,struct frames_proxy_args*) ;
 int * r_list_clone (int ) ;
 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static RList *r_debug_native_frames(RDebug *dbg, ut64 at) {
 RDebugFrameCallback cb = ((void*)0);
 if (dbg->btalgo) {
  if (!strcmp (dbg->btalgo, "fuzzy")) {
   cb = backtrace_fuzzy;
  } else if (!strcmp (dbg->btalgo, "anal")) {
   if (dbg->bits == R_SYS_BITS_64) {
    cb = backtrace_x86_64_anal;
   } else {
    cb = backtrace_x86_32_anal;
   }
  }
 }
 if (!cb) {
  if (dbg->bits == R_SYS_BITS_64) {
   cb = backtrace_x86_64;
  } else {
   cb = backtrace_x86_32;
  }
 }

 RList *list;
 if (dbg->btalgo && !strcmp (dbg->btalgo, "trace")) {
  list = r_list_clone (dbg->call_frames);
 } else {




  list = cb (dbg, at);

 }

 prepend_current_pc (dbg, list);
 return list;
}
