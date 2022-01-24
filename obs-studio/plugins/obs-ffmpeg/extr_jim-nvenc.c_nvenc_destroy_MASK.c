#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_16__ ;
typedef  struct TYPE_18__   TYPE_15__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
struct TYPE_19__ {size_t num; TYPE_13__* array; } ;
struct nvenc_data {size_t next_bitstream; TYPE_16__ packet_data; TYPE_16__ input_textures; TYPE_16__ bitstreams; TYPE_16__ textures; int /*<<< orphan*/  dts_list; struct nvenc_data* sei; struct nvenc_data* header; TYPE_8__* device; TYPE_9__* context; scalar_t__ session; scalar_t__ encode_started; } ;
struct TYPE_28__ {TYPE_3__* lpVtbl; } ;
struct TYPE_27__ {TYPE_4__* lpVtbl; } ;
struct TYPE_26__ {TYPE_1__* lpVtbl; } ;
struct TYPE_25__ {TYPE_2__* lpVtbl; } ;
struct TYPE_24__ {int /*<<< orphan*/  completionEvent; int /*<<< orphan*/  encodePicFlags; int /*<<< orphan*/  member_0; } ;
struct TYPE_23__ {int /*<<< orphan*/  (* Release ) (TYPE_8__*) ;} ;
struct TYPE_22__ {int /*<<< orphan*/  (* Release ) (TYPE_9__*) ;} ;
struct TYPE_21__ {int /*<<< orphan*/  (* Release ) (TYPE_6__*) ;} ;
struct TYPE_20__ {int /*<<< orphan*/  (* Release ) (TYPE_7__*) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  (* nvEncDestroyEncoder ) (scalar_t__) ;int /*<<< orphan*/  (* nvEncEncodePicture ) (scalar_t__,TYPE_5__*) ;} ;
struct TYPE_17__ {TYPE_6__* km; TYPE_7__* tex; int /*<<< orphan*/  event; } ;
typedef  TYPE_5__ NV_ENC_PIC_PARAMS ;
typedef  TYPE_6__ IDXGIKeyedMutex ;
typedef  TYPE_7__ ID3D11Texture2D ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  NV_ENC_PIC_FLAG_EOS ; 
 int /*<<< orphan*/  NV_ENC_PIC_PARAMS_VER ; 
 int /*<<< orphan*/  FUNC0 (struct nvenc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_16__) ; 
 int /*<<< orphan*/  FUNC3 (struct nvenc_data*,int) ; 
 TYPE_15__ nv ; 
 int /*<<< orphan*/  FUNC4 (struct nvenc_data*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvenc_data*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 

__attribute__((used)) static void FUNC12(void *data)
{
	struct nvenc_data *enc = data;

	if (enc->encode_started) {
		size_t next_bitstream = enc->next_bitstream;
		HANDLE next_event = enc->bitstreams.array[next_bitstream].event;

		NV_ENC_PIC_PARAMS params = {NV_ENC_PIC_PARAMS_VER};
		params.encodePicFlags = NV_ENC_PIC_FLAG_EOS;
		params.completionEvent = next_event;
		nv.nvEncEncodePicture(enc->session, &params);
		FUNC3(enc, true);
	}
	for (size_t i = 0; i < enc->textures.num; i++) {
		FUNC5(enc, &enc->textures.array[i]);
	}
	for (size_t i = 0; i < enc->bitstreams.num; i++) {
		FUNC4(enc, &enc->bitstreams.array[i]);
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

	FUNC0(enc->header);
	FUNC0(enc->sei);
	FUNC1(&enc->dts_list);
	FUNC2(enc->textures);
	FUNC2(enc->bitstreams);
	FUNC2(enc->input_textures);
	FUNC2(enc->packet_data);
	FUNC0(enc);
}