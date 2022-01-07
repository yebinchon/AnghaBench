
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef int Datum ;


 scalar_t__ DatumGetNumericAbbrev (int ) ;

__attribute__((used)) static int
numeric_cmp_abbrev(Datum x, Datum y, SortSupport ssup)
{




 if (DatumGetNumericAbbrev(x) < DatumGetNumericAbbrev(y))
  return 1;
 if (DatumGetNumericAbbrev(x) > DatumGetNumericAbbrev(y))
  return -1;
 return 0;
}
