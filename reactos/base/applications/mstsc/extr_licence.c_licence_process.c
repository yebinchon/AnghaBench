
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int STREAM ;


 int DEBUG (char*) ;





 int in_uint8 (int ,int) ;
 int in_uint8s (int ,int) ;
 int licence_process_error_alert (int ) ;
 int licence_process_new_license (int ) ;
 int licence_process_platform_challenge (int ) ;
 int licence_process_request (int ) ;
 int unimpl (char*,int) ;

void
licence_process(STREAM s)
{
 uint8 tag;

 in_uint8(s, tag);
 in_uint8s(s, 3);





 switch (tag)
 {
  case 129:
   licence_process_request(s);
   break;

  case 130:
   licence_process_platform_challenge(s);
   break;

  case 131:
  case 128:

   licence_process_new_license(s);
   break;

  case 132:
   licence_process_error_alert(s);
   break;

  default:
   unimpl("licence tag 0x%02x\n", tag);
 }
}
