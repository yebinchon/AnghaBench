
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int AbortOutOfAnyTransaction () ;
 int CommitTransactionCommand () ;
 scalar_t__ OidIsValid (int ) ;
 int RemoveTempRelations (int ) ;
 int StartTransactionCommand () ;
 int myTempNamespace ;

__attribute__((used)) static void
RemoveTempRelationsCallback(int code, Datum arg)
{
 if (OidIsValid(myTempNamespace))
 {

  AbortOutOfAnyTransaction();
  StartTransactionCommand();

  RemoveTempRelations(myTempNamespace);

  CommitTransactionCommand();
 }
}
