
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_id; int * interp; int query_hash; } ;
typedef TYPE_1__ pltcl_interp_desc ;
typedef int interpname ;
typedef int Tcl_Interp ;
typedef int Oid ;


 int ERROR ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int TCL_STRING_KEYS ;
 int Tcl_CreateObjCommand (int *,char*,int ,int *,int *) ;
 int * Tcl_CreateSlave (int ,char*,int) ;
 int Tcl_DeleteInterp (int *) ;
 int Tcl_InitHashTable (int *,int ) ;
 int call_pltcl_start_proc (int ,int) ;
 int elog (int ,char*) ;
 int pltcl_SPI_execute ;
 int pltcl_SPI_execute_plan ;
 int pltcl_SPI_prepare ;
 int pltcl_argisnull ;
 int pltcl_commit ;
 int pltcl_elog ;
 int pltcl_hold_interp ;
 int pltcl_quote ;
 int pltcl_returnnext ;
 int pltcl_returnnull ;
 int pltcl_rollback ;
 int pltcl_subtransaction ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
pltcl_init_interp(pltcl_interp_desc *interp_desc, Oid prolang, bool pltrusted)
{
 Tcl_Interp *interp;
 char interpname[32];






 snprintf(interpname, sizeof(interpname), "slave_%u", interp_desc->user_id);
 if ((interp = Tcl_CreateSlave(pltcl_hold_interp, interpname,
          pltrusted ? 1 : 0)) == ((void*)0))
  elog(ERROR, "could not create slave Tcl interpreter");




 Tcl_InitHashTable(&interp_desc->query_hash, TCL_STRING_KEYS);




 Tcl_CreateObjCommand(interp, "elog",
       pltcl_elog, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "quote",
       pltcl_quote, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "argisnull",
       pltcl_argisnull, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "return_null",
       pltcl_returnnull, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "return_next",
       pltcl_returnnext, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "spi_exec",
       pltcl_SPI_execute, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "spi_prepare",
       pltcl_SPI_prepare, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "spi_execp",
       pltcl_SPI_execute_plan, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "subtransaction",
       pltcl_subtransaction, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "commit",
       pltcl_commit, ((void*)0), ((void*)0));
 Tcl_CreateObjCommand(interp, "rollback",
       pltcl_rollback, ((void*)0), ((void*)0));
 PG_TRY();
 {
  interp_desc->interp = interp;
  call_pltcl_start_proc(prolang, pltrusted);
 }
 PG_CATCH();
 {
  interp_desc->interp = ((void*)0);
  Tcl_DeleteInterp(interp);
  PG_RE_THROW();
 }
 PG_END_TRY();
}
