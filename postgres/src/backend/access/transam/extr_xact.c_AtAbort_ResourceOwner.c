
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CurrentResourceOwner ;
 int TopTransactionResourceOwner ;

__attribute__((used)) static void
AtAbort_ResourceOwner(void)
{




 CurrentResourceOwner = TopTransactionResourceOwner;
}
