
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union pstun {scalar_t__ pst_command; } ;
struct TYPE_2__ {int ps_nargvstr; scalar_t__ ps_argvstr; } ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateEvent (int *,int ,int ,char*) ;
 int FALSE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IsUnderPostmaster ;
 int MemSet (scalar_t__,int ,scalar_t__) ;
 int MyProcPid ;
 int PSTAT_SETCMD ;
 int PS_BUFFER_SIZE ;
 int PS_PADDING ;
 TYPE_1__* PS_STRINGS ;
 int TRUE ;
 scalar_t__ last_status_len ;
 scalar_t__ ps_buffer ;
 scalar_t__ ps_buffer_cur_len ;
 scalar_t__ ps_buffer_fixed_size ;
 scalar_t__ ps_buffer_size ;
 int pstat (int ,union pstun,scalar_t__,int ,int ) ;
 int setproctitle (char*,scalar_t__) ;
 int setproctitle_fast (char*,scalar_t__) ;
 int sprintf (char*,char*,int,scalar_t__) ;
 int strlcpy (scalar_t__,char const*,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;
 int update_process_title ;

void
set_ps_display(const char *activity, bool force)
{


 if (!force && !update_process_title)
  return;


 if (!IsUnderPostmaster)
  return;
 strlcpy(ps_buffer + ps_buffer_fixed_size, activity,
   ps_buffer_size - ps_buffer_fixed_size);
 ps_buffer_cur_len = strlen(ps_buffer);
}
