
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvenc_data {int session; int device; } ;
struct TYPE_5__ {int (* nvEncOpenEncodeSessionEx ) (TYPE_1__*,int *) ;} ;
struct TYPE_4__ {int apiVersion; int deviceType; int device; int member_0; } ;
typedef TYPE_1__ NV_ENC_OPEN_ENCODE_SESSION_EX_PARAMS ;


 int NVENCAPI_VERSION ;
 int NV_ENC_DEVICE_TYPE_DIRECTX ;
 int NV_ENC_OPEN_ENCODE_SESSION_EX_PARAMS_VER ;
 scalar_t__ NV_FAILED (int ) ;
 TYPE_3__ nv ;
 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static bool init_session(struct nvenc_data *enc)
{
 NV_ENC_OPEN_ENCODE_SESSION_EX_PARAMS params = {
  NV_ENC_OPEN_ENCODE_SESSION_EX_PARAMS_VER};
 params.device = enc->device;
 params.deviceType = NV_ENC_DEVICE_TYPE_DIRECTX;
 params.apiVersion = NVENCAPI_VERSION;

 if (NV_FAILED(nv.nvEncOpenEncodeSessionEx(&params, &enc->session))) {
  return 0;
 }
 return 1;
}
