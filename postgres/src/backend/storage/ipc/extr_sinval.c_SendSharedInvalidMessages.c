
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedInvalidationMessage ;


 int SIInsertDataEntries (int const*,int) ;

void
SendSharedInvalidMessages(const SharedInvalidationMessage *msgs, int n)
{
 SIInsertDataEntries(msgs, n);
}
