
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VTEncodeInfoFlags ;
typedef int OSStatus ;
typedef void* CVPixelBufferRef ;
typedef void* CMSimpleQueueRef ;
typedef int * CMSampleBufferRef ;


 int CFRelease (void*) ;
 int CFRetain (int *) ;
 int CMSimpleQueueEnqueue (void*,int *) ;
 int UNUSED_PARAMETER (int ) ;

void sample_encoded_callback(void *data, void *source, OSStatus status,
        VTEncodeInfoFlags info_flags,
        CMSampleBufferRef buffer)
{
 UNUSED_PARAMETER(status);
 UNUSED_PARAMETER(info_flags);

 CMSimpleQueueRef queue = data;
 CVPixelBufferRef pixbuf = source;
 if (buffer != ((void*)0)) {
  CFRetain(buffer);
  CMSimpleQueueEnqueue(queue, buffer);
 }
 CFRelease(pixbuf);
}
