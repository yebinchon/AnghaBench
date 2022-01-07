
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LWLockRelease (int ) ;
 int RelCacheInitLock ;

void
RelationCacheInitFilePostInvalidate(void)
{
 LWLockRelease(RelCacheInitLock);
}
