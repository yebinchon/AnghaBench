
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float int32_t ;
typedef int VTCompressionSessionRef ;
typedef int OSStatus ;
typedef int CFNumberRef ;
typedef int CFMutableArrayRef ;


 int CFArrayAppendValue (int ,int ) ;
 int CFArrayCreateMutable (int ,int,int *) ;
 int CFNumberCreate (int *,int ,float*) ;
 int CFRelease (int ) ;
 int LOG_WARNING ;
 int SESSION_CHECK (int ) ;
 int kCFAllocatorDefault ;
 int kCFNumberFloatType ;
 int kCFNumberIntType ;
 int kCFTypeArrayCallBacks ;
 int kVTCompressionPropertyKey_AverageBitRate ;
 int kVTCompressionPropertyKey_DataRateLimits ;
 int kVTPropertyNotSupportedErr ;
 int log_osstatus (int ,int *,char*,int ) ;
 int noErr ;
 int session_set_prop (int ,int ,int ) ;
 int session_set_prop_int (int ,int ,int) ;

__attribute__((used)) static OSStatus session_set_bitrate(VTCompressionSessionRef session,
        int new_bitrate, bool limit_bitrate,
        int max_bitrate, float max_bitrate_window)
{
 OSStatus code;

 SESSION_CHECK(session_set_prop_int(
  session, kVTCompressionPropertyKey_AverageBitRate,
  new_bitrate * 1000));

 if (limit_bitrate) {
  int32_t cpb_size = max_bitrate * 125 * max_bitrate_window;

  CFNumberRef cf_cpb_size =
   CFNumberCreate(((void*)0), kCFNumberIntType, &cpb_size);
  CFNumberRef cf_cpb_window_s = CFNumberCreate(
   ((void*)0), kCFNumberFloatType, &max_bitrate_window);

  CFMutableArrayRef rate_control = CFArrayCreateMutable(
   kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);

  CFArrayAppendValue(rate_control, cf_cpb_size);
  CFArrayAppendValue(rate_control, cf_cpb_window_s);

  code = session_set_prop(
   session, kVTCompressionPropertyKey_DataRateLimits,
   rate_control);

  CFRelease(cf_cpb_size);
  CFRelease(cf_cpb_window_s);
  CFRelease(rate_control);

  if (code == kVTPropertyNotSupportedErr) {
   log_osstatus(LOG_WARNING, ((void*)0),
         "setting DataRateLimits on session", code);
   return noErr;
  }
 }

 return noErr;
}
