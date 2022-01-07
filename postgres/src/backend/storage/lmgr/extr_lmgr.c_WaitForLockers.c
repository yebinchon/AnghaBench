
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int WaitForLockersMultiple (int *,int ,int) ;
 int list_free (int *) ;
 int * list_make1 (int *) ;

void
WaitForLockers(LOCKTAG heaplocktag, LOCKMODE lockmode, bool progress)
{
 List *l;

 l = list_make1(&heaplocktag);
 WaitForLockersMultiple(l, lockmode, progress);
 list_free(l);
}
