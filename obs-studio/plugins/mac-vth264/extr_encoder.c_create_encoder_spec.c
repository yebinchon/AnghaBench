
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CFStringRef ;
typedef int CFMutableDictionaryRef ;


 int CFDictionaryAddValue (int ,int ,int ) ;
 int CFDictionaryCreateMutable (int ,int,int *,int *) ;
 int CFRelease (int ) ;
 int CFStringCreateWithFileSystemRepresentation (int *,char const*) ;
 int ENABLE_HW_ACCEL ;
 int ENCODER_ID ;
 int REQUIRE_HW_ACCEL ;
 int kCFAllocatorDefault ;
 int kCFBooleanFalse ;
 int kCFBooleanTrue ;
 int kCFTypeDictionaryKeyCallBacks ;
 int kCFTypeDictionaryValueCallBacks ;

__attribute__((used)) static inline CFMutableDictionaryRef
create_encoder_spec(const char *vt_encoder_id)
{
 CFMutableDictionaryRef encoder_spec = CFDictionaryCreateMutable(
  kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks,
  &kCFTypeDictionaryValueCallBacks);

 CFStringRef id =
  CFStringCreateWithFileSystemRepresentation(((void*)0), vt_encoder_id);
 CFDictionaryAddValue(encoder_spec, ENCODER_ID, id);
 CFRelease(id);

 CFDictionaryAddValue(encoder_spec, ENABLE_HW_ACCEL, kCFBooleanTrue);
 CFDictionaryAddValue(encoder_spec, REQUIRE_HW_ACCEL, kCFBooleanFalse);

 return encoder_spec;
}
