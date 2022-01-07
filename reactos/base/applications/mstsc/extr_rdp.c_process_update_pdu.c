
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;






 int in_uint16_le (int ,int) ;
 int in_uint8s (int ,int) ;
 int process_bitmap_updates (int ) ;
 int process_orders (int ,int) ;
 int process_palette (int ) ;
 int ui_begin_update () ;
 int ui_end_update () ;
 int unimpl (char*,int) ;

__attribute__((used)) static void
process_update_pdu(STREAM s)
{
 uint16 update_type, count;

 in_uint16_le(s, update_type);

 ui_begin_update();
 switch (update_type)
 {
  case 130:
   in_uint8s(s, 2);
   in_uint16_le(s, count);
   in_uint8s(s, 2);
   process_orders(s, count);
   break;

  case 131:
   process_bitmap_updates(s);
   break;

  case 129:
   process_palette(s);
   break;

  case 128:
   break;

  default:
   unimpl("update %d\n", update_type);
 }
 ui_end_update();
}
