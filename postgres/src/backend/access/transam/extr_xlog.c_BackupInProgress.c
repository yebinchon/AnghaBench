
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int BACKUP_LABEL_FILE ;
 scalar_t__ stat (int ,struct stat*) ;

bool
BackupInProgress(void)
{
 struct stat stat_buf;

 return (stat(BACKUP_LABEL_FILE, &stat_buf) == 0);
}
