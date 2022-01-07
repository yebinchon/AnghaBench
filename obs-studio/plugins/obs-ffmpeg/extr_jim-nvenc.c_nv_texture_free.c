
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvenc_data {int session; } ;
struct nv_texture {TYPE_2__* tex; scalar_t__ res; scalar_t__ mapped_res; } ;
struct TYPE_6__ {int (* nvEncUnregisterResource ) (int ,scalar_t__) ;int (* nvEncUnmapInputResource ) (int ,scalar_t__) ;} ;
struct TYPE_5__ {TYPE_1__* lpVtbl; } ;
struct TYPE_4__ {int (* Release ) (TYPE_2__*) ;} ;


 TYPE_3__ nv ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static void nv_texture_free(struct nvenc_data *enc, struct nv_texture *nvtex)
{
 if (nvtex->res) {
  if (nvtex->mapped_res) {
   nv.nvEncUnmapInputResource(enc->session,
         nvtex->mapped_res);
  }
  nv.nvEncUnregisterResource(enc->session, nvtex->res);
  nvtex->tex->lpVtbl->Release(nvtex->tex);
 }
}
