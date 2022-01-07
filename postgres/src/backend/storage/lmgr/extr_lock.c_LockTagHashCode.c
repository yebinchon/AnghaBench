
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int LOCKTAG ;


 int LockMethodLockHash ;
 int get_hash_value (int ,void const*) ;

uint32
LockTagHashCode(const LOCKTAG *locktag)
{
 return get_hash_value(LockMethodLockHash, (const void *) locktag);
}
