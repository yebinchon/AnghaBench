
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MetaCommand ;


 int META_ELIF ;
 int META_ELSE ;
 int META_ENDIF ;
 int META_GSET ;
 int META_IF ;
 int META_NONE ;
 int META_SET ;
 int META_SETSHELL ;
 int META_SHELL ;
 int META_SLEEP ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;

__attribute__((used)) static MetaCommand
getMetaCommand(const char *cmd)
{
 MetaCommand mc;

 if (cmd == ((void*)0))
  mc = META_NONE;
 else if (pg_strcasecmp(cmd, "set") == 0)
  mc = META_SET;
 else if (pg_strcasecmp(cmd, "setshell") == 0)
  mc = META_SETSHELL;
 else if (pg_strcasecmp(cmd, "shell") == 0)
  mc = META_SHELL;
 else if (pg_strcasecmp(cmd, "sleep") == 0)
  mc = META_SLEEP;
 else if (pg_strcasecmp(cmd, "if") == 0)
  mc = META_IF;
 else if (pg_strcasecmp(cmd, "elif") == 0)
  mc = META_ELIF;
 else if (pg_strcasecmp(cmd, "else") == 0)
  mc = META_ELSE;
 else if (pg_strcasecmp(cmd, "endif") == 0)
  mc = META_ENDIF;
 else if (pg_strcasecmp(cmd, "gset") == 0)
  mc = META_GSET;
 else
  mc = META_NONE;
 return mc;
}
