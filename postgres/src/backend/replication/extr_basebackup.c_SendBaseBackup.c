
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* label; } ;
typedef TYPE_1__ basebackup_options ;
typedef int activitymsg ;
struct TYPE_7__ {int options; } ;
typedef TYPE_2__ BaseBackupCmd ;


 int WALSNDSTATE_BACKUP ;
 int WalSndSetState (int ) ;
 int parse_basebackup_options (int ,TYPE_1__*) ;
 int perform_base_backup (TYPE_1__*) ;
 int set_ps_display (char*,int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ update_process_title ;

void
SendBaseBackup(BaseBackupCmd *cmd)
{
 basebackup_options opt;

 parse_basebackup_options(cmd->options, &opt);

 WalSndSetState(WALSNDSTATE_BACKUP);

 if (update_process_title)
 {
  char activitymsg[50];

  snprintf(activitymsg, sizeof(activitymsg), "sending backup \"%s\"",
     opt.label);
  set_ps_display(activitymsg, 0);
 }

 perform_base_backup(&opt);
}
