
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Timestamp ;


 int Assert (int ) ;
 int IS_VALID_TIMESTAMP (int ) ;
 scalar_t__ TIMESTAMP_IS_NOBEGIN (int ) ;
 scalar_t__ TIMESTAMP_IS_NOEND (int ) ;
 int timestamp_cmp_internal (int ,int ) ;

__attribute__((used)) static int
cmpTimestampWithOverflow(Timestamp ts1, int overflow1, Timestamp ts2)
{




 Assert(IS_VALID_TIMESTAMP(ts2));





 if (overflow1)
 {
  if (overflow1 < 0)
  {
   if (TIMESTAMP_IS_NOBEGIN(ts2))
    return 1;
   else
    return -1;
  }
  if (overflow1 > 0)
  {
   if (TIMESTAMP_IS_NOEND(ts2))
    return -1;
   else
    return 1;
  }
 }

 return timestamp_cmp_internal(ts1, ts2);
}
