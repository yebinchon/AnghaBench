
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CurrentTransactionState ;
 scalar_t__ DEBUG5 ;
 int ShowTransactionStateRec (char const*,int ) ;
 scalar_t__ client_min_messages ;
 scalar_t__ log_min_messages ;

__attribute__((used)) static void
ShowTransactionState(const char *str)
{

 if (log_min_messages <= DEBUG5 || client_min_messages <= DEBUG5)
  ShowTransactionStateRec(str, CurrentTransactionState);
}
