
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ACL_DELETE_CHR ;
 char ACL_INSERT_CHR ;
 char ACL_SELECT_CHR ;
 char ACL_UPDATE_CHR ;
 int ERROR ;
 int elog (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static char
parse_policy_command(const char *cmd_name)
{
 char polcmd;

 if (!cmd_name)
  elog(ERROR, "unrecognized policy command");

 if (strcmp(cmd_name, "all") == 0)
  polcmd = '*';
 else if (strcmp(cmd_name, "select") == 0)
  polcmd = ACL_SELECT_CHR;
 else if (strcmp(cmd_name, "insert") == 0)
  polcmd = ACL_INSERT_CHR;
 else if (strcmp(cmd_name, "update") == 0)
  polcmd = ACL_UPDATE_CHR;
 else if (strcmp(cmd_name, "delete") == 0)
  polcmd = ACL_DELETE_CHR;
 else
  elog(ERROR, "unrecognized policy command");

 return polcmd;
}
