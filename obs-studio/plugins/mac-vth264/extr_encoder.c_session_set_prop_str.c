
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VTCompressionSessionRef ;
typedef int OSStatus ;
typedef int CFStringRef ;


 int CFRelease (int ) ;
 int CFStringCreateWithFileSystemRepresentation (int *,char*) ;
 int VTSessionSetProperty (int ,int ,int ) ;

__attribute__((used)) static OSStatus session_set_prop_str(VTCompressionSessionRef session,
         CFStringRef key, char *val)
{
 CFStringRef s = CFStringCreateWithFileSystemRepresentation(((void*)0), val);
 OSStatus code = VTSessionSetProperty(session, key, s);
 CFRelease(s);

 return code;
}
