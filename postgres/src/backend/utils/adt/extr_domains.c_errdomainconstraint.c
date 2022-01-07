
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int PG_DIAG_CONSTRAINT_NAME ;
 int err_generic_string (int ,char const*) ;
 int errdatatype (int ) ;

int
errdomainconstraint(Oid datatypeOid, const char *conname)
{
 errdatatype(datatypeOid);
 err_generic_string(PG_DIAG_CONSTRAINT_NAME, conname);

 return 0;
}
