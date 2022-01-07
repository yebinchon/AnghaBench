
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int averageBitRate; int maxBitRate; } ;
struct TYPE_7__ {TYPE_1__ rcParams; } ;
struct nvenc_data {int session; int params; TYPE_2__ config; scalar_t__ can_change_bitrate; } ;
typedef int obs_data_t ;
struct TYPE_9__ {int (* nvEncReconfigureEncoder ) (int ,TYPE_3__*) ;} ;
struct TYPE_8__ {int resetEncoder; int forceIDR; int reInitEncodeParams; int version; int member_0; } ;
typedef TYPE_3__ NV_ENC_RECONFIGURE_PARAMS ;


 int NV_ENC_RECONFIGURE_PARAMS_VER ;
 scalar_t__ NV_FAILED (int ) ;
 TYPE_5__ nv ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static bool nvenc_update(void *data, obs_data_t *settings)
{
 struct nvenc_data *enc = data;


 if (enc->can_change_bitrate) {
  int bitrate = (int)obs_data_get_int(settings, "bitrate");

  enc->config.rcParams.averageBitRate = bitrate * 1000;
  enc->config.rcParams.maxBitRate = bitrate * 1000;

  NV_ENC_RECONFIGURE_PARAMS params = {0};
  params.version = NV_ENC_RECONFIGURE_PARAMS_VER;
  params.reInitEncodeParams = enc->params;
  params.resetEncoder = 1;
  params.forceIDR = 1;

  if (NV_FAILED(nv.nvEncReconfigureEncoder(enc->session,
        &params))) {
   return 0;
  }
 }

 return 1;
}
