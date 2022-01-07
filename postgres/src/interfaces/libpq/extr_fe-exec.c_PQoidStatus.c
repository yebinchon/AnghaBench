
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {scalar_t__ cmdStatus; } ;
typedef TYPE_1__ PGresult ;


 int memcpy (char*,scalar_t__,size_t) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;
 size_t strspn (scalar_t__,char*) ;

char *
PQoidStatus(const PGresult *res)
{




 static char buf[24];

 size_t len;

 if (!res || strncmp(res->cmdStatus, "INSERT ", 7) != 0)
  return "";

 len = strspn(res->cmdStatus + 7, "0123456789");
 if (len > sizeof(buf) - 1)
  len = sizeof(buf) - 1;
 memcpy(buf, res->cmdStatus + 7, len);
 buf[len] = '\0';

 return buf;
}
