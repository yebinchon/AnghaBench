
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int TupleDesc ;
typedef int MemoryContext ;


 int Assert (int) ;
 int CacheMemoryContext ;
 int * EOXactTupleDescArray ;
 int EOXactTupleDescArrayLen ;
 int MemoryContextSwitchTo (int ) ;
 int NextEOXactTupleDescNum ;
 scalar_t__ palloc (int) ;
 scalar_t__ repalloc (int *,int) ;

__attribute__((used)) static void
RememberToFreeTupleDescAtEOX(TupleDesc td)
{
 if (EOXactTupleDescArray == ((void*)0))
 {
  MemoryContext oldcxt;

  oldcxt = MemoryContextSwitchTo(CacheMemoryContext);

  EOXactTupleDescArray = (TupleDesc *) palloc(16 * sizeof(TupleDesc));
  EOXactTupleDescArrayLen = 16;
  NextEOXactTupleDescNum = 0;
  MemoryContextSwitchTo(oldcxt);
 }
 else if (NextEOXactTupleDescNum >= EOXactTupleDescArrayLen)
 {
  int32 newlen = EOXactTupleDescArrayLen * 2;

  Assert(EOXactTupleDescArrayLen > 0);

  EOXactTupleDescArray = (TupleDesc *) repalloc(EOXactTupleDescArray,
               newlen * sizeof(TupleDesc));
  EOXactTupleDescArrayLen = newlen;
 }

 EOXactTupleDescArray[NextEOXactTupleDescNum++] = td;
}
