
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sqld; TYPE_1__* sqlvar; } ;
typedef TYPE_2__ sqlda_t ;
typedef int decimal ;
struct TYPE_4__ {int* sqlind; char* sqlname; int sqltype; char* sqldata; } ;






 int dectoasc (int *,char*,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_sqlda(sqlda_t *sqlda)
{
 int i;

 if (sqlda == ((void*)0))
 {
  printf("dump_sqlda called with NULL sqlda\n");
  return;
 }

 for (i = 0; i < sqlda->sqld; i++)
 {
  if (sqlda->sqlvar[i].sqlind && *(sqlda->sqlvar[i].sqlind) == -1)
   printf("name sqlda descriptor: '%s' value NULL'\n", sqlda->sqlvar[i].sqlname);
  else
  switch (sqlda->sqlvar[i].sqltype)
  {
  case 131:
   printf("name sqlda descriptor: '%s' value '%s'\n", sqlda->sqlvar[i].sqlname, sqlda->sqlvar[i].sqldata);
   break;
  case 128:
   printf("name sqlda descriptor: '%s' value %d\n", sqlda->sqlvar[i].sqlname, *(int *)sqlda->sqlvar[i].sqldata);
   break;
  case 129:
   printf("name sqlda descriptor: '%s' value %f\n", sqlda->sqlvar[i].sqlname, *(double *)sqlda->sqlvar[i].sqldata);
   break;
  case 130:
   {
    char val[64];
    dectoasc((decimal *)sqlda->sqlvar[i].sqldata, val, 64, -1);
    printf("name sqlda descriptor: '%s' value DECIMAL '%s'\n", sqlda->sqlvar[i].sqlname, val);
    break;
   }
  }
 }
}
