
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* InvalidMultiXactId ;
 int MXactCache ;
 scalar_t__ MXactCacheMembers ;
 int * MXactContext ;
 size_t MyBackendId ;
 void** OldestMemberMXactId ;
 void** OldestVisibleMXactId ;
 int dlist_init (int *) ;

void
AtEOXact_MultiXact(void)
{







 OldestMemberMXactId[MyBackendId] = InvalidMultiXactId;
 OldestVisibleMXactId[MyBackendId] = InvalidMultiXactId;





 MXactContext = ((void*)0);
 dlist_init(&MXactCache);
 MXactCacheMembers = 0;
}
