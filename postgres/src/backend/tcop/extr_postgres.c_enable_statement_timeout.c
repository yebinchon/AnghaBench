
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int STATEMENT_TIMEOUT ;
 scalar_t__ StatementTimeout ;
 int disable_timeout (int ,int) ;
 int enable_timeout_after (int ,scalar_t__) ;
 scalar_t__ get_timeout_active (int ) ;
 int xact_started ;

__attribute__((used)) static void
enable_statement_timeout(void)
{

 Assert(xact_started);

 if (StatementTimeout > 0)
 {
  if (!get_timeout_active(STATEMENT_TIMEOUT))
   enable_timeout_after(STATEMENT_TIMEOUT, StatementTimeout);
 }
 else
 {
  if (get_timeout_active(STATEMENT_TIMEOUT))
   disable_timeout(STATEMENT_TIMEOUT, 0);
 }
}
