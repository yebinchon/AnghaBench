
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sqld; TYPE_2__* sqlvar; } ;
typedef TYPE_3__ sqlda_t ;
typedef int numeric ;
struct TYPE_5__ {char* data; } ;
struct TYPE_6__ {int* sqlind; int sqltype; char* sqldata; TYPE_1__ sqlname; } ;
 int PGTYPESchar_free (char*) ;
 char* PGTYPESnumeric_to_asc (int *,int) ;
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
   printf("name sqlda descriptor: '%s' value NULL'\n", sqlda->sqlvar[i].sqlname.data);
  else
  switch (sqlda->sqlvar[i].sqltype)
  {
  case 133:
   printf("name sqlda descriptor: '%s' value '%s'\n", sqlda->sqlvar[i].sqlname.data, sqlda->sqlvar[i].sqldata);
   break;
  case 131:
   printf("name sqlda descriptor: '%s' value %d\n", sqlda->sqlvar[i].sqlname.data, *(int *)sqlda->sqlvar[i].sqldata);
   break;
  case 130:
   printf("name sqlda descriptor: '%s' value %ld\n", sqlda->sqlvar[i].sqlname.data, *(long int *)sqlda->sqlvar[i].sqldata);
   break;
  case 129:
   printf(



    "name sqlda descriptor: '%s' value %lld\n",

    sqlda->sqlvar[i].sqlname.data, *(long long int *)sqlda->sqlvar[i].sqldata);
   break;
  case 132:
   printf("name sqlda descriptor: '%s' value %f\n", sqlda->sqlvar[i].sqlname.data, *(double *)sqlda->sqlvar[i].sqldata);
   break;
  case 128:
   {
    char *val;

    val = PGTYPESnumeric_to_asc((numeric*)sqlda->sqlvar[i].sqldata, -1);
    printf("name sqlda descriptor: '%s' value NUMERIC '%s'\n", sqlda->sqlvar[i].sqlname.data, val);
    PGTYPESchar_free(val);
    break;
   }
  }
 }
}
