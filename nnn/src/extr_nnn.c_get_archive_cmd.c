
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCHIVE_CMD_LEN ;
 size_t ATOOL ;
 size_t BSDTAR ;
 scalar_t__ getutil (int ) ;
 scalar_t__ is_suffix (char*,char*) ;
 int * utils ;
 int xstrlcpy (char*,char*,int ) ;

__attribute__((used)) static void get_archive_cmd(char *cmd, char *archive)
{
 if (getutil(utils[ATOOL]))
  xstrlcpy(cmd, "atool -a", ARCHIVE_CMD_LEN);
 else if (getutil(utils[BSDTAR]))
  xstrlcpy(cmd, "bsdtar -acvf", ARCHIVE_CMD_LEN);
 else if (is_suffix(archive, ".zip"))
  xstrlcpy(cmd, "zip -r", ARCHIVE_CMD_LEN);
 else
  xstrlcpy(cmd, "tar -acvf", ARCHIVE_CMD_LEN);
}
