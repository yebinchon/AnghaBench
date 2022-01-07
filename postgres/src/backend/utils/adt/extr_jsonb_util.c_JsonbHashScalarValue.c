
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int len; scalar_t__ val; } ;
struct TYPE_5__ {int boolean; int numeric; TYPE_2__ string; } ;
struct TYPE_7__ {int type; TYPE_1__ val; } ;
typedef TYPE_3__ JsonbValue ;


 int DatumGetUInt32 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int NumericGetDatum (int ) ;
 int elog (int ,char*) ;
 int hash_any (unsigned char const*,int ) ;
 int hash_numeric ;





void
JsonbHashScalarValue(const JsonbValue *scalarVal, uint32 *hash)
{
 uint32 tmp;


 switch (scalarVal->type)
 {
  case 130:
   tmp = 0x01;
   break;
  case 128:
   tmp = DatumGetUInt32(hash_any((const unsigned char *) scalarVal->val.string.val,
            scalarVal->val.string.len));
   break;
  case 129:

   tmp = DatumGetUInt32(DirectFunctionCall1(hash_numeric,
              NumericGetDatum(scalarVal->val.numeric)));
   break;
  case 131:
   tmp = scalarVal->val.boolean ? 0x02 : 0x04;

   break;
  default:
   elog(ERROR, "invalid jsonb scalar type");
   tmp = 0;
   break;
 }






 *hash = (*hash << 1) | (*hash >> 31);
 *hash ^= tmp;
}
