
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMSampleBufferRef ;
typedef scalar_t__ CFDictionaryRef ;
typedef scalar_t__ CFBooleanRef ;
typedef int * CFArrayRef ;


 scalar_t__ CFArrayGetValueAtIndex (int *,int ) ;
 scalar_t__ CFDictionaryGetValue (scalar_t__,int ) ;
 int * CMSampleBufferGetSampleAttachmentsArray (int ,int) ;
 scalar_t__ kCFBooleanFalse ;
 int kCMSampleAttachmentKey_DependsOnOthers ;

__attribute__((used)) static bool is_sample_keyframe(CMSampleBufferRef buffer)
{
 CFArrayRef attachments =
  CMSampleBufferGetSampleAttachmentsArray(buffer, 0);
 if (attachments != ((void*)0)) {
  CFDictionaryRef attachment;
  CFBooleanRef has_dependencies;
  attachment =
   (CFDictionaryRef)CFArrayGetValueAtIndex(attachments, 0);
  has_dependencies = (CFBooleanRef)CFDictionaryGetValue(
   attachment, kCMSampleAttachmentKey_DependsOnOthers);
  return has_dependencies == kCFBooleanFalse;
 }

 return 0;
}
