
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_error_code; } ;
struct rtmp_stream {int output; TYPE_1__ rtmp; } ;
 char* obs_module_text (char*) ;
 int obs_output_set_last_error (int ,char const*) ;

__attribute__((used)) static void set_output_error(struct rtmp_stream *stream)
{
 const char *msg = ((void*)0);
 switch (stream->rtmp.last_error_code) {
 case 137:
  msg = obs_module_text("ConnectionTimedOut");
  break;
 case 141:
  msg = obs_module_text("PermissionDenied");
  break;
 case 139:
  msg = obs_module_text("ConnectionAborted");
  break;
 case 138:
  msg = obs_module_text("ConnectionReset");
  break;
 case 136:
  msg = obs_module_text("HostNotFound");
  break;
 case 135:
  msg = obs_module_text("NoData");
  break;
 case 140:
  msg = obs_module_text("AddressNotAvailable");
  break;
 }



 if (!msg) {
  switch (stream->rtmp.last_error_code) {
  case -0x2700:
   msg = obs_module_text("SSLCertVerifyFailed");
   break;
  }
 }

 obs_output_set_last_error(stream->output, msg);
}
