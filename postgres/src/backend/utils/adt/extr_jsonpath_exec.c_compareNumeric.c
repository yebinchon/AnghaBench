
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Numeric ;


 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int NumericGetDatum (int ) ;
 int numeric_cmp ;

__attribute__((used)) static int
compareNumeric(Numeric a, Numeric b)
{
 return DatumGetInt32(DirectFunctionCall2(numeric_cmp,
            NumericGetDatum(a),
            NumericGetDatum(b)));
}
