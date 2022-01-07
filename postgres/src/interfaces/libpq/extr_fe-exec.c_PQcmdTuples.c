
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cmdStatus; int noticeHooks; } ;
typedef TYPE_1__ PGresult ;


 int isdigit (unsigned char) ;
 int pqInternalNotice (int *,char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

char *
PQcmdTuples(PGresult *res)
{
 char *p,
      *c;

 if (!res)
  return "";

 if (strncmp(res->cmdStatus, "INSERT ", 7) == 0)
 {
  p = res->cmdStatus + 7;

  while (*p && *p != ' ')
   p++;
  if (*p == 0)
   goto interpret_error;
  p++;
 }
 else if (strncmp(res->cmdStatus, "SELECT ", 7) == 0 ||
    strncmp(res->cmdStatus, "DELETE ", 7) == 0 ||
    strncmp(res->cmdStatus, "UPDATE ", 7) == 0)
  p = res->cmdStatus + 7;
 else if (strncmp(res->cmdStatus, "FETCH ", 6) == 0)
  p = res->cmdStatus + 6;
 else if (strncmp(res->cmdStatus, "MOVE ", 5) == 0 ||
    strncmp(res->cmdStatus, "COPY ", 5) == 0)
  p = res->cmdStatus + 5;
 else
  return "";


 for (c = p; *c; c++)
 {
  if (!isdigit((unsigned char) *c))
   goto interpret_error;
 }
 if (c == p)
  goto interpret_error;

 return p;

interpret_error:
 pqInternalNotice(&res->noticeHooks,
      "could not interpret result from server: %s",
      res->cmdStatus);
 return "";
}
