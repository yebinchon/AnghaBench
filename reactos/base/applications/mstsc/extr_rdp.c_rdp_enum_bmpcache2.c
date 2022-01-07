
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int STREAM ;
typedef int HASH_KEY ;


 int BMPCACHE2_NUM_PSTCELLS ;
 scalar_t__ MIN (scalar_t__,int) ;
 scalar_t__ PDU_FLAG_FIRST ;
 scalar_t__ PDU_FLAG_LAST ;
 int out_uint16_le (int ,scalar_t__) ;
 int out_uint32_le (int ,scalar_t__) ;
 int out_uint8a (int ,int ,scalar_t__) ;
 scalar_t__ pstcache_enumerate (int,int *) ;
 int rdp_init_data (int) ;
 int rdp_send_data (int ,int) ;
 int s_mark_end (int ) ;

__attribute__((used)) static void
rdp_enum_bmpcache2(void)
{
 STREAM s;
 HASH_KEY keylist[BMPCACHE2_NUM_PSTCELLS];
 uint32 num_keys, offset, count, flags;

 offset = 0;
 num_keys = pstcache_enumerate(2, keylist);

 while (offset < num_keys)
 {
  count = MIN(num_keys - offset, 169);

  s = rdp_init_data(24 + count * sizeof(HASH_KEY));

  flags = 0;
  if (offset == 0)
   flags |= PDU_FLAG_FIRST;
  if (num_keys - offset <= 169)
   flags |= PDU_FLAG_LAST;


  out_uint32_le(s, 0);
  out_uint16_le(s, count);
  out_uint16_le(s, 0);
  out_uint16_le(s, 0);
  out_uint16_le(s, 0);
  out_uint16_le(s, 0);
  out_uint16_le(s, num_keys);
  out_uint32_le(s, 0);
  out_uint32_le(s, flags);


  out_uint8a(s, keylist[offset], count * sizeof(HASH_KEY));

  s_mark_end(s);
  rdp_send_data(s, 0x2b);

  offset += 169;
 }
}
