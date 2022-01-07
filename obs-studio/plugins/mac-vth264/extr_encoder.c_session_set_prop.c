
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VTCompressionSessionRef ;
typedef int OSStatus ;
typedef int CFTypeRef ;
typedef int CFStringRef ;


 int VTSessionSetProperty (int ,int ,int ) ;

__attribute__((used)) static OSStatus session_set_prop(VTCompressionSessionRef session,
     CFStringRef key, CFTypeRef val)
{
 return VTSessionSetProperty(session, key, val);
}
