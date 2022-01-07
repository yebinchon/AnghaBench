
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlvar_compat {char* sqlname; int sqltypelen; int sqlxid; int sqltype; } ;
struct sqlda_compat {int sqld; long desc_occ; struct sqlvar_compat* sqlvar; } ;
typedef enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef int PGresult ;


 int PQfname (int *,int) ;
 int PQfsize (int *,int) ;
 int PQftype (int *,int) ;
 int PQnfields (int *) ;
 scalar_t__ ecpg_alloc (long,int) ;
 int ecpg_log (char*,int,int) ;
 int memset (struct sqlda_compat*,int ,long) ;
 long sqlda_compat_total_size (int *,int,int) ;
 int sqlda_dynamic_type (int ,int) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (char*) ;

struct sqlda_compat *
ecpg_build_compat_sqlda(int line, PGresult *res, int row, enum COMPAT_MODE compat)
{
 struct sqlda_compat *sqlda;
 struct sqlvar_compat *sqlvar;
 char *fname;
 long size;
 int sqld;
 int i;

 size = sqlda_compat_total_size(res, row, compat);
 sqlda = (struct sqlda_compat *) ecpg_alloc(size, line);
 if (!sqlda)
  return ((void*)0);

 memset(sqlda, 0, size);
 sqlvar = (struct sqlvar_compat *) (sqlda + 1);
 sqld = PQnfields(res);
 fname = (char *) (sqlvar + sqld);

 sqlda->sqld = sqld;
 ecpg_log("ecpg_build_compat_sqlda on line %d sqld = %d\n", line, sqld);
 sqlda->desc_occ = size;
 sqlda->sqlvar = sqlvar;

 for (i = 0; i < sqlda->sqld; i++)
 {
  sqlda->sqlvar[i].sqltype = sqlda_dynamic_type(PQftype(res, i), compat);
  strcpy(fname, PQfname(res, i));
  sqlda->sqlvar[i].sqlname = fname;
  fname += strlen(sqlda->sqlvar[i].sqlname) + 1;






  sqlda->sqlvar[i].sqlxid = PQftype(res, i);
  sqlda->sqlvar[i].sqltypelen = PQfsize(res, i);
 }

 return sqlda;
}
