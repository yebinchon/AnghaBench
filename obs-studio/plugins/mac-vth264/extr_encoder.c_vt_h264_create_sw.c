
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_encoder_t ;
typedef int obs_data_t ;


 int APPLE_H264_ENC_ID_SW ;
 void* vt_h264_create (int *,int *,int ) ;

__attribute__((used)) static void *vt_h264_create_sw(obs_data_t *settings, obs_encoder_t *encoder)
{
 return vt_h264_create(settings, encoder, APPLE_H264_ENC_ID_SW);
}
