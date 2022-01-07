
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ExecStatusType ;


 char* libpq_gettext (char*) ;
 char** pgresStatus ;

char *
PQresStatus(ExecStatusType status)
{
 if ((unsigned int) status >= sizeof pgresStatus / sizeof pgresStatus[0])
  return libpq_gettext("invalid ExecStatusType code");
 return pgresStatus[status];
}
