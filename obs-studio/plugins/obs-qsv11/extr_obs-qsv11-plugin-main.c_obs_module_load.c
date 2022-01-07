
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_1; int member_0; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ mfxVersion ;
typedef scalar_t__ mfxStatus ;
typedef int mfxSession ;
typedef int mfxIMPL ;


 int MFXClose (int ) ;
 scalar_t__ MFXInit (int,TYPE_2__*,int *) ;
 scalar_t__ MFX_ERR_NONE ;
 int MFX_IMPL_HARDWARE_ANY ;
 int MFX_IMPL_VIA_D3D11 ;
 int MFX_IMPL_VIA_D3D9 ;
 int obs_qsv_encoder ;
 int obs_register_encoder (int *) ;

bool obs_module_load(void)
{
 mfxIMPL impl = MFX_IMPL_HARDWARE_ANY | MFX_IMPL_VIA_D3D11;
 mfxVersion ver = {{0, 1}};
 mfxSession session;
 mfxStatus sts;

 sts = MFXInit(impl, &ver, &session);

 if (sts == MFX_ERR_NONE) {
  obs_register_encoder(&obs_qsv_encoder);
  MFXClose(session);
 } else {
  impl = MFX_IMPL_HARDWARE_ANY | MFX_IMPL_VIA_D3D9;
  sts = MFXInit(impl, &ver, &session);
  if (sts == MFX_ERR_NONE) {
   obs_register_encoder(&obs_qsv_encoder);
   MFXClose(session);
  }
 }

 return 1;
}
