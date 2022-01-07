
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int StartTransactionCommand () ;
 int enable_statement_timeout () ;
 int xact_started ;

__attribute__((used)) static void
start_xact_command(void)
{
 if (!xact_started)
 {
  StartTransactionCommand();

  xact_started = 1;
 }
 enable_statement_timeout();
}
