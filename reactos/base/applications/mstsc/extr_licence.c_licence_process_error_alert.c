
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;


 void* True ;
 void* g_licence_error_result ;
 void* g_licence_issued ;
 int in_uint32 (int ,int) ;
 int warning (char*,...) ;

void
licence_process_error_alert(STREAM s)
{
 uint32 error_code;
 uint32 state_transition;
 uint32 error_info;
 in_uint32(s, error_code);
 in_uint32(s, state_transition);
 in_uint32(s, error_info);







 if (error_code == 0x07)
 {
  g_licence_issued = True;
  return;
 }


 switch (error_code)
 {
  case 0x6:
   warning("License error alert from server: No license server\n");
   break;

  case 0x8:
   warning("License error alert from server: Invalid client\n");
   break;

  case 0x4:
  case 0xb:
  case 0xc:
  default:
   warning("License error alert from server: code %u, state transition %u\n",
    error_code, state_transition);
   break;
 }


 switch (error_info)
 {
  default:
   break;
 }

 g_licence_error_result = True;
}
