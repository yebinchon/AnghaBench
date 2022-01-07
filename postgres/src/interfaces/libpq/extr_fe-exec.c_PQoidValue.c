
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cmdStatus; } ;
typedef TYPE_1__ PGresult ;
typedef int Oid ;


 int InvalidOid ;
 scalar_t__ strncmp (char*,char*,int) ;
 unsigned long strtoul (char*,char**,int) ;

Oid
PQoidValue(const PGresult *res)
{
 char *endptr = ((void*)0);
 unsigned long result;

 if (!res ||
  strncmp(res->cmdStatus, "INSERT ", 7) != 0 ||
  res->cmdStatus[7] < '0' ||
  res->cmdStatus[7] > '9')
  return InvalidOid;

 result = strtoul(res->cmdStatus + 7, &endptr, 10);

 if (!endptr || (*endptr != ' ' && *endptr != '\0'))
  return InvalidOid;
 else
  return (Oid) result;
}
