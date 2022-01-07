
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CommitTransactionCommand () ;
 int MemoryContextCheck (int ) ;
 int MemoryContextStats (int ) ;
 int TopMemoryContext ;
 int disable_statement_timeout () ;
 int xact_started ;

__attribute__((used)) static void
finish_xact_command(void)
{

 disable_statement_timeout();

 if (xact_started)
 {
  CommitTransactionCommand();
  xact_started = 0;
 }
}
