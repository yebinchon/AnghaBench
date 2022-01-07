
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_4__ {int input_count; int abbr_card; scalar_t__ estimating; } ;
typedef TYPE_1__ network_sortsupport_state ;
typedef int inet ;
struct TYPE_5__ {TYPE_1__* ssup_extra; } ;
typedef TYPE_2__* SortSupport ;
typedef int Datum ;


 int ABBREV_BITS_INET4_NETMASK_SIZE ;
 int ABBREV_BITS_INET4_SUBNET ;
 int Assert (int) ;
 int BITS_PER_BYTE ;
 int DatumBigEndianToNative (int) ;
 int * DatumGetInetPP (int) ;
 int DatumGetUInt32 (int ) ;
 scalar_t__ PGSQL_AF_INET ;
 scalar_t__ PGSQL_AF_INET6 ;
 int SIZEOF_DATUM ;
 int addHyperLogLog (int *,int ) ;
 int hash_uint32 (int) ;
 int ip_addr (int *) ;
 int ip_bits (int *) ;
 scalar_t__ ip_family (int *) ;
 int ip_maxbits (int *) ;
 int memcpy (int*,int ,int) ;
 int pg_bswap32 (int) ;

__attribute__((used)) static Datum
network_abbrev_convert(Datum original, SortSupport ssup)
{
 network_sortsupport_state *uss = ssup->ssup_extra;
 inet *authoritative = DatumGetInetPP(original);
 Datum res,
    ipaddr_datum,
    subnet_bitmask,
    network;
 int subnet_size;

 Assert(ip_family(authoritative) == PGSQL_AF_INET ||
     ip_family(authoritative) == PGSQL_AF_INET6);
 if (ip_family(authoritative) == PGSQL_AF_INET)
 {
  uint32 ipaddr_datum32;

  memcpy(&ipaddr_datum32, ip_addr(authoritative), sizeof(uint32));



  ipaddr_datum = pg_bswap32(ipaddr_datum32);





  res = (Datum) 0;
 }
 else
 {
  memcpy(&ipaddr_datum, ip_addr(authoritative), sizeof(Datum));


  ipaddr_datum = DatumBigEndianToNative(ipaddr_datum);


  res = ((Datum) 1) << (SIZEOF_DATUM * BITS_PER_BYTE - 1);
 }
 subnet_size = ip_maxbits(authoritative) - ip_bits(authoritative);
 Assert(subnet_size >= 0);

 subnet_size %= SIZEOF_DATUM * BITS_PER_BYTE;
 if (ip_bits(authoritative) == 0)
 {

  subnet_bitmask = ((Datum) 0) - 1;
  network = 0;
 }
 else if (ip_bits(authoritative) < SIZEOF_DATUM * BITS_PER_BYTE)
 {

  subnet_bitmask = (((Datum) 1) << subnet_size) - 1;
  network = ipaddr_datum & ~subnet_bitmask;
 }
 else
 {

  subnet_bitmask = 0;
  network = ipaddr_datum;
 }
 {





  res |= network >> 1;
 }

 uss->input_count += 1;


 if (uss->estimating)
 {
  uint32 tmp;




  tmp = (uint32) res;


  addHyperLogLog(&uss->abbr_card, DatumGetUInt32(hash_uint32(tmp)));
 }

 return res;
}
