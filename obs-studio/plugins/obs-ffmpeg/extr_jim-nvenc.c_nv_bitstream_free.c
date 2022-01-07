
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvenc_data {int session; } ;
struct nv_bitstream {int event; scalar_t__ ptr; } ;
struct TYPE_5__ {int (* nvEncUnregisterAsyncEvent ) (int ,TYPE_1__*) ;int (* nvEncDestroyBitstreamBuffer ) (int ,scalar_t__) ;} ;
struct TYPE_4__ {int completionEvent; int member_0; } ;
typedef TYPE_1__ NV_ENC_EVENT_PARAMS ;


 int CloseHandle (int ) ;
 int NV_ENC_EVENT_PARAMS_VER ;
 TYPE_3__ nv ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,TYPE_1__*) ;

__attribute__((used)) static void nv_bitstream_free(struct nvenc_data *enc, struct nv_bitstream *bs)
{
 if (bs->ptr) {
  nv.nvEncDestroyBitstreamBuffer(enc->session, bs->ptr);

  NV_ENC_EVENT_PARAMS params = {NV_ENC_EVENT_PARAMS_VER};
  params.completionEvent = bs->event;
  nv.nvEncUnregisterAsyncEvent(enc->session, &params);
  CloseHandle(bs->event);
 }
}
