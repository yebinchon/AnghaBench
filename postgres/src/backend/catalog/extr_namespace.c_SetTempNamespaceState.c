
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int Assert (int) ;
 scalar_t__ InvalidOid ;
 scalar_t__ InvalidSubTransactionId ;
 int baseSearchPathValid ;
 scalar_t__ myTempNamespace ;
 scalar_t__ myTempNamespaceSubID ;
 scalar_t__ myTempToastNamespace ;

void
SetTempNamespaceState(Oid tempNamespaceId, Oid tempToastNamespaceId)
{

 Assert(myTempNamespace == InvalidOid);
 Assert(myTempToastNamespace == InvalidOid);
 Assert(myTempNamespaceSubID == InvalidSubTransactionId);


 myTempNamespace = tempNamespaceId;
 myTempToastNamespace = tempToastNamespaceId;
 baseSearchPathValid = 0;
}
