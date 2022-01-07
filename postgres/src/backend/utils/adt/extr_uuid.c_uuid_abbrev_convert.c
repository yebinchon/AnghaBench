
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int input_count; int abbr_card; scalar_t__ estimating; } ;
typedef TYPE_1__ uuid_sortsupport_state ;
typedef int uint64 ;
typedef int uint32 ;
struct TYPE_7__ {int data; } ;
typedef TYPE_2__ pg_uuid_t ;
struct TYPE_8__ {TYPE_1__* ssup_extra; } ;
typedef TYPE_3__* SortSupport ;
typedef scalar_t__ Datum ;


 scalar_t__ DatumBigEndianToNative (scalar_t__) ;
 int DatumGetUInt32 (int ) ;
 TYPE_2__* DatumGetUUIDP (scalar_t__) ;
 int addHyperLogLog (int *,int ) ;
 int hash_uint32 (int) ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static Datum
uuid_abbrev_convert(Datum original, SortSupport ssup)
{
 uuid_sortsupport_state *uss = ssup->ssup_extra;
 pg_uuid_t *authoritative = DatumGetUUIDP(original);
 Datum res;

 memcpy(&res, authoritative->data, sizeof(Datum));
 uss->input_count += 1;

 if (uss->estimating)
 {
  uint32 tmp;




  tmp = (uint32) res;


  addHyperLogLog(&uss->abbr_card, DatumGetUInt32(hash_uint32(tmp)));
 }
 res = DatumBigEndianToNative(res);

 return res;
}
