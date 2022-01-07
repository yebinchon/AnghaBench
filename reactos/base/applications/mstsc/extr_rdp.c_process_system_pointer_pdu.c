
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;



 int in_uint16_le (int ,int) ;
 int ui_set_null_cursor () ;
 int unimpl (char*,int) ;

void
process_system_pointer_pdu(STREAM s)
{
 uint16 system_pointer_type;

 in_uint16_le(s, system_pointer_type);
 switch (system_pointer_type)
 {
  case 128:
   ui_set_null_cursor();
   break;

  default:
   unimpl("System pointer message 0x%x\n", system_pointer_type);
 }
}
