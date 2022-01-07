
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;


 int cache_get_cursor (int ) ;
 int in_uint16_le (int ,int ) ;
 int ui_set_cursor (int ) ;

void
process_cached_pointer_pdu(STREAM s)
{
 uint16 cache_idx;

 in_uint16_le(s, cache_idx);
 ui_set_cursor(cache_get_cursor(cache_idx));
}
