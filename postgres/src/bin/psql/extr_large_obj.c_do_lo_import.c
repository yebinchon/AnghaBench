
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vars; int db; } ;
typedef int PGresult ;
typedef scalar_t__ Oid ;


 scalar_t__ InvalidOid ;
 int MCXT_ALLOC_NO_OOM ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int PQescapeStringConn (int ,char*,char const*,size_t,int *) ;
 int * PSQLexec (char*) ;
 int ResetCancelConn () ;
 int SetCancelConn () ;
 int SetVariable (int ,char*,char*) ;
 int fail_lo_xact (char*,int) ;
 int finish_lo_xact (char*,int) ;
 int free (char*) ;
 scalar_t__ lo_import (int ,char const*) ;
 int pg_log_info (char*,int ) ;
 char* pg_malloc_extended (size_t,int ) ;
 int print_lo_result (char*,scalar_t__) ;
 TYPE_1__ pset ;
 int sprintf (char*,char*,scalar_t__) ;
 int start_lo_xact (char*,int*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

bool
do_lo_import(const char *filename_arg, const char *comment_arg)
{
 PGresult *res;
 Oid loid;
 char oidbuf[32];
 bool own_transaction;

 if (!start_lo_xact("\\lo_import", &own_transaction))
  return 0;

 SetCancelConn();
 loid = lo_import(pset.db, filename_arg);
 ResetCancelConn();

 if (loid == InvalidOid)
 {
  pg_log_info("%s", PQerrorMessage(pset.db));
  return fail_lo_xact("\\lo_import", own_transaction);
 }


 if (comment_arg)
 {
  char *cmdbuf;
  char *bufptr;
  size_t slen = strlen(comment_arg);

  cmdbuf = pg_malloc_extended(slen * 2 + 256, MCXT_ALLOC_NO_OOM);
  if (!cmdbuf)
   return fail_lo_xact("\\lo_import", own_transaction);
  sprintf(cmdbuf, "COMMENT ON LARGE OBJECT %u IS '", loid);
  bufptr = cmdbuf + strlen(cmdbuf);
  bufptr += PQescapeStringConn(pset.db, bufptr, comment_arg, slen, ((void*)0));
  strcpy(bufptr, "'");

  if (!(res = PSQLexec(cmdbuf)))
  {
   free(cmdbuf);
   return fail_lo_xact("\\lo_import", own_transaction);
  }

  PQclear(res);
  free(cmdbuf);
 }

 if (!finish_lo_xact("\\lo_import", own_transaction))
  return 0;

 print_lo_result("lo_import %u", loid);

 sprintf(oidbuf, "%u", loid);
 SetVariable(pset.vars, "LASTOID", oidbuf);

 return 1;
}
