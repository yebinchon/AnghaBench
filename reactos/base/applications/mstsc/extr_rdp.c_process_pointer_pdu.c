
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;







 int in_uint16_le (int ,int) ;
 int in_uint8s (int ,int) ;
 int process_cached_pointer_pdu (int ) ;
 int process_colour_pointer_pdu (int ) ;
 int process_new_pointer_pdu (int ) ;
 int process_system_pointer_pdu (int ) ;
 int s_check (int ) ;
 int ui_move_pointer (int,int) ;
 int unimpl (char*,int) ;

__attribute__((used)) static void
process_pointer_pdu(STREAM s)
{
 uint16 message_type;
 uint16 x, y;

 in_uint16_le(s, message_type);
 in_uint8s(s, 2);

 switch (message_type)
 {
  case 130:
   in_uint16_le(s, x);
   in_uint16_le(s, y);
   if (s_check(s))
    ui_move_pointer(x, y);
   break;

  case 131:
   process_colour_pointer_pdu(s);
   break;

  case 132:
   process_cached_pointer_pdu(s);
   break;

  case 128:
   process_system_pointer_pdu(s);
   break;

  case 129:
   process_new_pointer_pdu(s);
   break;

  default:
   unimpl("Pointer message 0x%x\n", message_type);
 }
}
