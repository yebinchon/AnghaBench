
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool
is_branching_command(const char *cmd)
{
 return (strcmp(cmd, "if") == 0 ||
   strcmp(cmd, "elif") == 0 ||
   strcmp(cmd, "else") == 0 ||
   strcmp(cmd, "endif") == 0);
}
