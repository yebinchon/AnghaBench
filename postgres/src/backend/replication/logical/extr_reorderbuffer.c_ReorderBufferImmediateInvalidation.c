
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int SharedInvalidationMessage ;
typedef int ReorderBuffer ;


 int AbortCurrentTransaction () ;
 int BeginInternalSubTransaction (char*) ;
 int IsTransactionOrTransactionBlock () ;
 int LocalExecuteInvalidationMessage (int *) ;
 int RollbackAndReleaseCurrentSubTransaction () ;

void
ReorderBufferImmediateInvalidation(ReorderBuffer *rb, uint32 ninvalidations,
           SharedInvalidationMessage *invalidations)
{
 bool use_subtxn = IsTransactionOrTransactionBlock();
 int i;

 if (use_subtxn)
  BeginInternalSubTransaction("replay");







 if (use_subtxn)
  AbortCurrentTransaction();

 for (i = 0; i < ninvalidations; i++)
  LocalExecuteInvalidationMessage(&invalidations[i]);

 if (use_subtxn)
  RollbackAndReleaseCurrentSubTransaction();
}
