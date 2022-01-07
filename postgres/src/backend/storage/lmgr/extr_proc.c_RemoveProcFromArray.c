
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Assert (int ) ;
 int InvalidTransactionId ;
 int * MyProc ;
 int ProcArrayRemove (int *,int ) ;

__attribute__((used)) static void
RemoveProcFromArray(int code, Datum arg)
{
 Assert(MyProc != ((void*)0));
 ProcArrayRemove(MyProc, InvalidTransactionId);
}
