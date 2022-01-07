
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ContextRecord; TYPE_1__* ExceptionRecord; } ;
struct TYPE_4__ {scalar_t__ ExceptionCode; scalar_t__* ExceptionInformation; } ;
typedef TYPE_1__ EXCEPTION_RECORD ;
typedef TYPE_2__ EXCEPTION_POINTERS ;
typedef int CONTEXT ;


 scalar_t__ EXCEPTION_ACCESS_VIOLATION ;
 int EXCEPTION_CONTINUE_EXECUTION ;
 int EXCEPTION_CONTINUE_SEARCH ;
 scalar_t__ SUCCESS ;
 scalar_t__ phpdbg_watchpoint_segfault_handler (void*) ;

int phpdbg_exception_handler_win32(EXCEPTION_POINTERS *xp) {
 EXCEPTION_RECORD *xr = xp->ExceptionRecord;
 CONTEXT *xc = xp->ContextRecord;

 if(xr->ExceptionCode == EXCEPTION_ACCESS_VIOLATION) {

  if (phpdbg_watchpoint_segfault_handler((void *)xr->ExceptionInformation[1]) == SUCCESS) {
   return EXCEPTION_CONTINUE_EXECUTION;
  }
 }

 return EXCEPTION_CONTINUE_SEARCH;
}
