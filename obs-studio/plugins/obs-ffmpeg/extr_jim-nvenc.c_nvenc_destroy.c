
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;
typedef struct TYPE_18__ TYPE_15__ ;
typedef struct TYPE_17__ TYPE_13__ ;


struct TYPE_19__ {size_t num; TYPE_13__* array; } ;
struct nvenc_data {size_t next_bitstream; TYPE_16__ packet_data; TYPE_16__ input_textures; TYPE_16__ bitstreams; TYPE_16__ textures; int dts_list; struct nvenc_data* sei; struct nvenc_data* header; TYPE_8__* device; TYPE_9__* context; scalar_t__ session; scalar_t__ encode_started; } ;
struct TYPE_28__ {TYPE_3__* lpVtbl; } ;
struct TYPE_27__ {TYPE_4__* lpVtbl; } ;
struct TYPE_26__ {TYPE_1__* lpVtbl; } ;
struct TYPE_25__ {TYPE_2__* lpVtbl; } ;
struct TYPE_24__ {int completionEvent; int encodePicFlags; int member_0; } ;
struct TYPE_23__ {int (* Release ) (TYPE_8__*) ;} ;
struct TYPE_22__ {int (* Release ) (TYPE_9__*) ;} ;
struct TYPE_21__ {int (* Release ) (TYPE_6__*) ;} ;
struct TYPE_20__ {int (* Release ) (TYPE_7__*) ;} ;
struct TYPE_18__ {int (* nvEncDestroyEncoder ) (scalar_t__) ;int (* nvEncEncodePicture ) (scalar_t__,TYPE_5__*) ;} ;
struct TYPE_17__ {TYPE_6__* km; TYPE_7__* tex; int event; } ;
typedef TYPE_5__ NV_ENC_PIC_PARAMS ;
typedef TYPE_6__ IDXGIKeyedMutex ;
typedef TYPE_7__ ID3D11Texture2D ;
typedef int HANDLE ;


 int NV_ENC_PIC_FLAG_EOS ;
 int NV_ENC_PIC_PARAMS_VER ;
 int bfree (struct nvenc_data*) ;
 int circlebuf_free (int *) ;
 int da_free (TYPE_16__) ;
 int get_encoded_packet (struct nvenc_data*,int) ;
 TYPE_15__ nv ;
 int nv_bitstream_free (struct nvenc_data*,TYPE_13__*) ;
 int nv_texture_free (struct nvenc_data*,TYPE_13__*) ;
 int stub1 (scalar_t__,TYPE_5__*) ;
 int stub2 (scalar_t__) ;
 int stub3 (TYPE_7__*) ;
 int stub4 (TYPE_6__*) ;
 int stub5 (TYPE_9__*) ;
 int stub6 (TYPE_8__*) ;

__attribute__((used)) static void nvenc_destroy(void *data)
{
 struct nvenc_data *enc = data;

 if (enc->encode_started) {
  size_t next_bitstream = enc->next_bitstream;
  HANDLE next_event = enc->bitstreams.array[next_bitstream].event;

  NV_ENC_PIC_PARAMS params = {NV_ENC_PIC_PARAMS_VER};
  params.encodePicFlags = NV_ENC_PIC_FLAG_EOS;
  params.completionEvent = next_event;
  nv.nvEncEncodePicture(enc->session, &params);
  get_encoded_packet(enc, 1);
 }
 for (size_t i = 0; i < enc->textures.num; i++) {
  nv_texture_free(enc, &enc->textures.array[i]);
 }
 for (size_t i = 0; i < enc->bitstreams.num; i++) {
  nv_bitstream_free(enc, &enc->bitstreams.array[i]);
 }
 if (enc->session) {
  nv.nvEncDestroyEncoder(enc->session);
 }
 for (size_t i = 0; i < enc->input_textures.num; i++) {
  ID3D11Texture2D *tex = enc->input_textures.array[i].tex;
  IDXGIKeyedMutex *km = enc->input_textures.array[i].km;
  tex->lpVtbl->Release(tex);
  km->lpVtbl->Release(km);
 }
 if (enc->context) {
  enc->context->lpVtbl->Release(enc->context);
 }
 if (enc->device) {
  enc->device->lpVtbl->Release(enc->device);
 }

 bfree(enc->header);
 bfree(enc->sei);
 circlebuf_free(&enc->dts_list);
 da_free(enc->textures);
 da_free(enc->bitstreams);
 da_free(enc->input_textures);
 da_free(enc->packet_data);
 bfree(enc);
}
