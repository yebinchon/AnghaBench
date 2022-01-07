
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiXactId ;


 int MultiXactIdToOffsetPage (int ) ;
 int MultiXactOffsetCtl ;
 int PreviousMultiXactId (int ) ;
 int SimpleLruTruncate (int ,int ) ;

__attribute__((used)) static void
PerformOffsetsTruncation(MultiXactId oldestMulti, MultiXactId newOldestMulti)
{







 SimpleLruTruncate(MultiXactOffsetCtl,
       MultiXactIdToOffsetPage(PreviousMultiXactId(newOldestMulti)));
}
