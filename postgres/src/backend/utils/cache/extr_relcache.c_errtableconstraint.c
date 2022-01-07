
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int PG_DIAG_CONSTRAINT_NAME ;
 int err_generic_string (int ,char const*) ;
 int errtable (int ) ;

int
errtableconstraint(Relation rel, const char *conname)
{
 errtable(rel);
 err_generic_string(PG_DIAG_CONSTRAINT_NAME, conname);

 return 0;
}
