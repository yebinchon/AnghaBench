
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SessionBackupState ;


 int sessionBackupState ;

SessionBackupState
get_backup_status(void)
{
 return sessionBackupState;
}
