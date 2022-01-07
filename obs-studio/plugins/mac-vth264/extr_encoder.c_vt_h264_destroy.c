
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_h264_encoder {int extra_data; int packet_data; int * session; } ;


 int CFRelease (int *) ;
 int VTCompressionSessionInvalidate (int *) ;
 int bfree (struct vt_h264_encoder*) ;
 int da_free (int ) ;

__attribute__((used)) static void vt_h264_destroy(void *data)
{
 struct vt_h264_encoder *enc = data;

 if (enc) {
  if (enc->session != ((void*)0)) {
   VTCompressionSessionInvalidate(enc->session);
   CFRelease(enc->session);
  }
  da_free(enc->packet_data);
  da_free(enc->extra_data);
  bfree(enc);
 }
}
