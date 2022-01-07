
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATEMENT_TIMEOUT ;
 int disable_timeout (int ,int) ;
 scalar_t__ get_timeout_active (int ) ;

__attribute__((used)) static void
disable_statement_timeout(void)
{
 if (get_timeout_active(STATEMENT_TIMEOUT))
  disable_timeout(STATEMENT_TIMEOUT, 0);
}
