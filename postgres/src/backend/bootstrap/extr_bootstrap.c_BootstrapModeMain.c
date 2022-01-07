
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int CommitTransactionCommand () ;
 int ERROR ;
 int InitPostgres (int *,int ,int *,int ,int *,int) ;
 int InitProcess () ;
 int InvalidOid ;
 int IsBootstrapProcessingMode () ;
 int IsUnderPostmaster ;
 int MAXATTR ;
 int* Nulls ;
 int RelationMapFinishBootstrap () ;
 int StartTransactionCommand () ;
 int ** attrtypes ;
 int boot_yyparse () ;
 int cleanup () ;
 int elog (int ,char*) ;
 scalar_t__ pg_link_canary_is_frontend () ;
 int proc_exit (int ) ;

__attribute__((used)) static void
BootstrapModeMain(void)
{
 int i;

 Assert(!IsUnderPostmaster);
 Assert(IsBootstrapProcessingMode());





 if (pg_link_canary_is_frontend())
  elog(ERROR, "backend is incorrectly linked to frontend functions");




 InitProcess();

 InitPostgres(((void*)0), InvalidOid, ((void*)0), InvalidOid, ((void*)0), 0);


 for (i = 0; i < MAXATTR; i++)
 {
  attrtypes[i] = ((void*)0);
  Nulls[i] = 0;
 }




 StartTransactionCommand();
 boot_yyparse();
 CommitTransactionCommand();





 RelationMapFinishBootstrap();


 cleanup();
 proc_exit(0);
}
