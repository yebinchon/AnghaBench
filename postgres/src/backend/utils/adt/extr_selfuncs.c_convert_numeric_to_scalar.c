
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;



 scalar_t__ DatumGetBool (int ) ;
 scalar_t__ DatumGetFloat4 (int ) ;
 scalar_t__ DatumGetFloat8 (int ) ;
 scalar_t__ DatumGetInt16 (int ) ;
 scalar_t__ DatumGetInt32 (int ) ;
 scalar_t__ DatumGetInt64 (int ) ;
 scalar_t__ DatumGetObjectId (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int numeric_float8_no_overflow ;

__attribute__((used)) static double
convert_numeric_to_scalar(Datum value, Oid typid, bool *failure)
{
 switch (typid)
 {
  case 145:
   return (double) DatumGetBool(value);
  case 142:
   return (double) DatumGetInt16(value);
  case 141:
   return (double) DatumGetInt32(value);
  case 140:
   return (double) DatumGetInt64(value);
  case 144:
   return (double) DatumGetFloat4(value);
  case 143:
   return (double) DatumGetFloat8(value);
  case 139:

   return (double)
    DatumGetFloat8(DirectFunctionCall1(numeric_float8_no_overflow,
               value));
  case 138:
  case 130:
  case 131:
  case 132:
  case 133:
  case 137:
  case 128:
  case 136:
  case 135:
  case 129:
  case 134:

   return (double) DatumGetObjectId(value);
 }

 *failure = 1;
 return 0;
}
