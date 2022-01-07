
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_4__ {int input_count; int abbr_card; scalar_t__ estimating; } ;
typedef TYPE_1__ macaddr_sortsupport_state ;
typedef int macaddr ;
struct TYPE_5__ {TYPE_1__* ssup_extra; } ;
typedef TYPE_2__* SortSupport ;
typedef scalar_t__ Datum ;


 scalar_t__ DatumBigEndianToNative (scalar_t__) ;
 int * DatumGetMacaddrP (scalar_t__) ;
 int DatumGetUInt32 (int ) ;
 int SIZEOF_DATUM ;
 int addHyperLogLog (int *,int ) ;
 int hash_uint32 (int) ;
 int memcpy (scalar_t__*,int *,int) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static Datum
macaddr_abbrev_convert(Datum original, SortSupport ssup)
{
 macaddr_sortsupport_state *uss = ssup->ssup_extra;
 macaddr *authoritative = DatumGetMacaddrP(original);
 Datum res;
 memcpy(&res, authoritative, SIZEOF_DATUM);

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
