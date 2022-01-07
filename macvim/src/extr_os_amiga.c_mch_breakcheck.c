
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGBREAKF_CTRL_C ;
 int SIGBREAKF_CTRL_D ;
 int SIGBREAKF_CTRL_E ;
 int SIGBREAKF_CTRL_F ;
 int SetSignal (long,long) ;
 int TRUE ;
 int got_int ;

void
mch_breakcheck()
{
   if (SetSignal(0L, (long)(SIGBREAKF_CTRL_C|SIGBREAKF_CTRL_D|SIGBREAKF_CTRL_E|SIGBREAKF_CTRL_F)) & SIGBREAKF_CTRL_C)
 got_int = TRUE;
}
