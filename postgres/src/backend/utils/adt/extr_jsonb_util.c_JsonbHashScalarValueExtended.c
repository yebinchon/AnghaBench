
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {int len; scalar_t__ val; } ;
struct TYPE_6__ {int boolean; int numeric; TYPE_1__ string; } ;
struct TYPE_7__ {int type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;


 int BoolGetDatum (int ) ;
 int DatumGetUInt64 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERROR ;
 int NumericGetDatum (int ) ;
 int ROTATE_HIGH_AND_LOW_32BITS (int) ;
 int UInt64GetDatum (int) ;
 int elog (int ,char*) ;
 int hash_any_extended (unsigned char const*,int ,int) ;
 int hash_numeric_extended ;
 int hashcharextended ;





void
JsonbHashScalarValueExtended(const JsonbValue *scalarVal, uint64 *hash,
        uint64 seed)
{
 uint64 tmp;

 switch (scalarVal->type)
 {
  case 130:
   tmp = seed + 0x01;
   break;
  case 128:
   tmp = DatumGetUInt64(hash_any_extended((const unsigned char *) scalarVal->val.string.val,
               scalarVal->val.string.len,
               seed));
   break;
  case 129:
   tmp = DatumGetUInt64(DirectFunctionCall2(hash_numeric_extended,
              NumericGetDatum(scalarVal->val.numeric),
              UInt64GetDatum(seed)));
   break;
  case 131:
   if (seed)
    tmp = DatumGetUInt64(DirectFunctionCall2(hashcharextended,
               BoolGetDatum(scalarVal->val.boolean),
               UInt64GetDatum(seed)));
   else
    tmp = scalarVal->val.boolean ? 0x02 : 0x04;

   break;
  default:
   elog(ERROR, "invalid jsonb scalar type");
   break;
 }

 *hash = ROTATE_HIGH_AND_LOW_32BITS(*hash);
 *hash ^= tmp;
}
