
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* values; } ;
typedef TYPE_1__ int2vector ;
typedef int int16 ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_index_indoption ;
 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int INDEXRELID ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;

__attribute__((used)) static bool
test_indoption(HeapTuple tuple, int attno, bool guard,
      int16 iopt_mask, int16 iopt_expect,
      bool *res)
{
 Datum datum;
 bool isnull;
 int2vector *indoption;
 int16 indoption_val;

 if (!guard)
 {
  *res = 0;
  return 1;
 }

 datum = SysCacheGetAttr(INDEXRELID, tuple,
       Anum_pg_index_indoption, &isnull);
 Assert(!isnull);

 indoption = ((int2vector *) DatumGetPointer(datum));
 indoption_val = indoption->values[attno - 1];

 *res = (indoption_val & iopt_mask) == iopt_expect;

 return 1;
}
