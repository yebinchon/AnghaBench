
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int flags; struct TYPE_3__* nextDomain; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int Datum ;


 int TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS ;
 TYPE_1__* firstDomainTypeEntry ;

__attribute__((used)) static void
TypeCacheConstrCallback(Datum arg, int cacheid, uint32 hashvalue)
{
 TypeCacheEntry *typentry;







 for (typentry = firstDomainTypeEntry;
   typentry != ((void*)0);
   typentry = typentry->nextDomain)
 {

  typentry->flags &= ~TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS;
 }
}
