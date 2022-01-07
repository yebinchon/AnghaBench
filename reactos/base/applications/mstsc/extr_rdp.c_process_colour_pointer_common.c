
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int STREAM ;
typedef int RD_HCURSOR ;


 int MIN (int,int) ;
 int cache_put_cursor (int,int ) ;
 int in_uint16_le (int ,int) ;
 int in_uint8p (int ,int *,int) ;
 int ui_create_cursor (int,int,int,int,int *,int *,int) ;
 int ui_set_cursor (int ) ;
 int warning (char*,int,int) ;

__attribute__((used)) static void
process_colour_pointer_common(STREAM s, int bpp)
{
 uint16 width, height, cache_idx, masklen, datalen;
 uint16 x, y;
 uint8 *mask;
 uint8 *data;
 RD_HCURSOR cursor;

 in_uint16_le(s, cache_idx);
 in_uint16_le(s, x);
 in_uint16_le(s, y);
 in_uint16_le(s, width);
 in_uint16_le(s, height);
 in_uint16_le(s, masklen);
 in_uint16_le(s, datalen);
 in_uint8p(s, data, datalen);
 in_uint8p(s, mask, masklen);
 if ((width != 32) || (height != 32))
 {
  warning("process_colour_pointer_common: " "width %d height %d\n", width, height);
 }


 x = MIN(x, width - 1);
 y = MIN(y, height - 1);
 cursor = ui_create_cursor(x, y, width, height, mask, data, bpp);
 ui_set_cursor(cursor);
 cache_put_cursor(cache_idx, cursor);
}
