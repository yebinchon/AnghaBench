
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int PG_DIAG_COLUMN_NAME ;
 int err_generic_string (int ,char const*) ;
 int errtable (int ) ;

int
errtablecolname(Relation rel, const char *colname)
{
 errtable(rel);
 err_generic_string(PG_DIAG_COLUMN_NAME, colname);

 return 0;
}
