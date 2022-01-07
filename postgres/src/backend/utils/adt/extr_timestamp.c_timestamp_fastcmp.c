
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Timestamp ;
typedef int SortSupport ;
typedef int Datum ;


 int DatumGetTimestamp (int ) ;
 int timestamp_cmp_internal (int ,int ) ;

__attribute__((used)) static int
timestamp_fastcmp(Datum x, Datum y, SortSupport ssup)
{
 Timestamp a = DatumGetTimestamp(x);
 Timestamp b = DatumGetTimestamp(y);

 return timestamp_cmp_internal(a, b);
}
