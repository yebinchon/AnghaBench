
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PREDICATELOCKTARGETTAG ;


 scalar_t__ GetParentPredicateLockTag (int *,int *) ;
 scalar_t__ PredicateLockExists (int *) ;

__attribute__((used)) static bool
CoarserLockCovers(const PREDICATELOCKTARGETTAG *newtargettag)
{
 PREDICATELOCKTARGETTAG targettag,
    parenttag;

 targettag = *newtargettag;


 while (GetParentPredicateLockTag(&targettag, &parenttag))
 {
  targettag = parenttag;
  if (PredicateLockExists(&targettag))
   return 1;
 }


 return 0;
}
