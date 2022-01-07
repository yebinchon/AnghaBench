
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sqlvar_struct {int dummy; } ;
struct sqlda_struct {int sqld; int sqln; int sqldabc; TYPE_2__* sqlvar; int sqldaid; } ;
typedef enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
struct TYPE_3__ {int data; int length; } ;
struct TYPE_4__ {TYPE_1__ sqlname; int sqltype; } ;
typedef int PGresult ;


 char* PQfname (int *,int) ;
 int PQftype (int *,int) ;
 int PQnfields (int *) ;
 scalar_t__ ecpg_alloc (long,int) ;
 int ecpg_log (char*,int,int) ;
 int memset (struct sqlda_struct*,int ,long) ;
 int sprintf (int ,char*) ;
 int sqlda_dynamic_type (int ,int) ;
 long sqlda_native_total_size (int *,int,int) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;

struct sqlda_struct *
ecpg_build_native_sqlda(int line, PGresult *res, int row, enum COMPAT_MODE compat)
{
 struct sqlda_struct *sqlda;
 long size;
 int i;

 size = sqlda_native_total_size(res, row, compat);
 sqlda = (struct sqlda_struct *) ecpg_alloc(size, line);
 if (!sqlda)
  return ((void*)0);

 memset(sqlda, 0, size);

 sprintf(sqlda->sqldaid, "SQLDA  ");
 sqlda->sqld = sqlda->sqln = PQnfields(res);
 ecpg_log("ecpg_build_native_sqlda on line %d sqld = %d\n", line, sqlda->sqld);
 sqlda->sqldabc = sizeof(struct sqlda_struct) + (sqlda->sqld - 1) * sizeof(struct sqlvar_struct);

 for (i = 0; i < sqlda->sqld; i++)
 {
  char *fname;

  sqlda->sqlvar[i].sqltype = sqlda_dynamic_type(PQftype(res, i), compat);
  fname = PQfname(res, i);
  sqlda->sqlvar[i].sqlname.length = strlen(fname);
  strcpy(sqlda->sqlvar[i].sqlname.data, fname);
 }

 return sqlda;
}
