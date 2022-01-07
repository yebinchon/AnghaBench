
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHPDBG_G ;


 int FAILURE ;
 int PHPDBG_EOL_CR ;
 int PHPDBG_EOL_CRLF ;
 int PHPDBG_EOL_LF ;
 int SUCCESS ;
 scalar_t__ strcmp (char*,char*) ;

int phpdbg_eol_global_update(char *name)
{

 if (0 == strcmp(name, "CRLF") || 0 == strcmp(name, "crlf") || 0 == strcmp(name, "DOS") || 0 == strcmp(name, "dos")) {
  PHPDBG_G(eol) = PHPDBG_EOL_CRLF;
 } else if (0 == strcmp(name, "LF") || 0 == strcmp(name, "lf") || 0 == strcmp(name, "UNIX") || 0 == strcmp(name, "unix")) {
  PHPDBG_G(eol) = PHPDBG_EOL_LF;
 } else if (0 == strcmp(name, "CR") || 0 == strcmp(name, "cr") || 0 == strcmp(name, "MAC") || 0 == strcmp(name, "mac")) {
  PHPDBG_G(eol) = PHPDBG_EOL_CR;
 } else {
  return FAILURE;
 }

 return SUCCESS;
}
