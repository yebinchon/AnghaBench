
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_h264_encoder {int dummy; } ;
typedef int OSStatus ;
typedef int CFStringRef ;
typedef int CFErrorRef ;


 int CFErrorCopyDescription (int ) ;
 int CFErrorCreate (int ,int ,int ,int *) ;
 int CFRelease (int ) ;
 int VT_BLOG (int,char*,char const*,char*) ;
 int VT_LOG (int,char*,char const*,char*) ;
 int bfree (char*) ;
 char* cfstr_copy_cstr (int ,int ) ;
 int kCFAllocatorDefault ;
 int kCFErrorDomainOSStatus ;
 int kCFStringEncodingUTF8 ;

__attribute__((used)) static void log_osstatus(int log_level, struct vt_h264_encoder *enc,
    const char *context, OSStatus code)
{
 char *c_str = ((void*)0);
 CFErrorRef err = CFErrorCreate(kCFAllocatorDefault,
           kCFErrorDomainOSStatus, code, ((void*)0));
 CFStringRef str = CFErrorCopyDescription(err);

 c_str = cfstr_copy_cstr(str, kCFStringEncodingUTF8);
 if (c_str) {
  if (enc)
   VT_BLOG(log_level, "Error in %s: %s", context, c_str);
  else
   VT_LOG(log_level, "Error in %s: %s", context, c_str);
 }

 bfree(c_str);
 CFRelease(str);
 CFRelease(err);
}
