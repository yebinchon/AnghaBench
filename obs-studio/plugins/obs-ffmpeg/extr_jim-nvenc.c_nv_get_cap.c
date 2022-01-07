
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvenc_data {int session; } ;
struct TYPE_5__ {int (* nvEncGetEncodeCaps ) (int ,int ,TYPE_1__*,int*) ;} ;
struct TYPE_4__ {int capsToQuery; int member_0; } ;
typedef TYPE_1__ NV_ENC_CAPS_PARAM ;
typedef int NV_ENC_CAPS ;


 int NV_ENC_CAPS_PARAM_VER ;
 int NV_ENC_CODEC_H264_GUID ;
 TYPE_3__ nv ;
 int stub1 (int ,int ,TYPE_1__*,int*) ;

__attribute__((used)) static inline int nv_get_cap(struct nvenc_data *enc, NV_ENC_CAPS cap)
{
 if (!enc->session)
  return 0;

 NV_ENC_CAPS_PARAM param = {NV_ENC_CAPS_PARAM_VER};
 int v;

 param.capsToQuery = cap;
 nv.nvEncGetEncodeCaps(enc->session, NV_ENC_CODEC_H264_GUID, &param, &v);
 return v;
}
