
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_restore_command ;
 int proc_exit (int) ;
 scalar_t__ shutdown_requested ;

void
PreRestoreCommand(void)
{






 in_restore_command = 1;
 if (shutdown_requested)
  proc_exit(1);
}
