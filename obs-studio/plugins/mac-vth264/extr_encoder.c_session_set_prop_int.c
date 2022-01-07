
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int VTCompressionSessionRef ;
typedef int OSStatus ;
typedef int CFStringRef ;
typedef int CFNumberRef ;


 int CFNumberCreate (int *,int ,int *) ;
 int CFRelease (int ) ;
 int VTSessionSetProperty (int ,int ,int ) ;
 int kCFNumberSInt32Type ;

__attribute__((used)) static OSStatus session_set_prop_int(VTCompressionSessionRef session,
         CFStringRef key, int32_t val)
{
 CFNumberRef n = CFNumberCreate(((void*)0), kCFNumberSInt32Type, &val);
 OSStatus code = VTSessionSetProperty(session, key, n);
 CFRelease(n);

 return code;
}
