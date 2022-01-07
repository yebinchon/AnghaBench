
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int out_port ;
typedef int in_port ;
typedef int hecv_type ;
typedef int bitrate_type ;
typedef int avc ;
struct TYPE_22__ {char const* filename; int width; int height; int fps; int remuxing; int downscale; int segment; int num_in_bufs; int num_out_bufs; scalar_t__* in_buf_headers; int free_in; scalar_t__* out_buf_headers; int handle; int state_cv; int state_lock; int done_out; int * codec_config; int state; void* v_ptr2; void* u_ptr2; void* y_ptr2; int lock; } ;
struct TYPE_16__ {int nFrameWidth; int nFrameHeight; int nSliceHeight; int xFramerate; int nBitrate; int eColorFormat; int eCompressionFormat; int nStride; } ;
struct TYPE_17__ {TYPE_1__ video; } ;
struct TYPE_21__ {int nSize; int nBufferCountActual; int nBufferSize; TYPE_2__ format; void* nPortIndex; int member_0; } ;
struct TYPE_20__ {int nSize; int nPFrames; int eLoopFilterMode; int nAllowedPictureTypes; int eLevel; int eProfile; scalar_t__ nBFrames; void* nPortIndex; int member_0; } ;
struct TYPE_19__ {int nSize; int nTargetBitrate; int eControlRate; void* nPortIndex; int member_0; } ;
struct TYPE_18__ {int nSize; int eLevel; int eProfile; void* nPortIndex; int member_0; } ;
typedef TYPE_3__ OMX_VIDEO_PARAM_HEVCTYPE ;
typedef TYPE_4__ OMX_VIDEO_PARAM_BITRATETYPE ;
typedef TYPE_5__ OMX_VIDEO_PARAM_AVCTYPE ;
typedef void* OMX_U32 ;
typedef int OMX_STRING ;
typedef TYPE_5__* OMX_PTR ;
typedef TYPE_7__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef int OMX_INDEXTYPE ;
typedef int OMX_BUFFERHEADERTYPE ;
typedef TYPE_8__ EncoderState ;


 int COLOR_FMT_NV12 ;
 int OMX_AllocateBuffer (int ,scalar_t__*,scalar_t__,TYPE_8__*,int ) ;
 int OMX_COLOR_FormatUnused ;
 int OMX_CommandStateSet ;
 int OMX_ErrorNone ;
 int OMX_FillThisBuffer (int ,scalar_t__) ;
 int OMX_GetHandle (int *,int ,TYPE_8__*,int *) ;
 int OMX_GetParameter (int ,int ,TYPE_5__*) ;
 int OMX_IndexParamPortDefinition ;
 int OMX_IndexParamVideoAvc ;
 int OMX_IndexParamVideoBitrate ;
 scalar_t__ OMX_IndexParamVideoHevc ;
 int OMX_SendCommand (int ,int ,int ,int *) ;
 int OMX_SetParameter (int ,int ,TYPE_5__*) ;
 int OMX_StateExecuting ;
 int OMX_StateIdle ;
 int OMX_StateLoaded ;
 int OMX_VIDEO_AVCLevel31 ;
 int OMX_VIDEO_AVCLoopFilterEnable ;
 int OMX_VIDEO_AVCProfileBaseline ;
 int OMX_VIDEO_CodingAVC ;
 int OMX_VIDEO_CodingHEVC ;
 int OMX_VIDEO_CodingUnused ;
 int OMX_VIDEO_HEVCHighTierLevel5 ;
 int OMX_VIDEO_HEVCProfileMain ;
 int OMX_VIDEO_PictureTypeB ;
 int OMX_Video_ControlRateVariable ;
 scalar_t__ PORT_INDEX_IN ;
 scalar_t__ PORT_INDEX_OUT ;
 int QOMX_COLOR_FORMATYUV420PackedSemiPlanar32m ;
 int VENUS_BUFFER_SIZE (int ,int,int) ;
 int VENUS_Y_STRIDE (int ,int) ;
 int assert (int) ;
 void* calloc (int,int) ;
 void* malloc (int) ;
 int memset (TYPE_8__*,int ,int) ;
 int mutex_init_reentrant (int *) ;
 int omx_callbacks ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int queue_init (int *) ;
 int queue_push (int *,void*) ;
 int wait_for_state (TYPE_8__*,int ) ;

void encoder_init(EncoderState *s, const char* filename, int width, int height, int fps, int bitrate, bool h265, bool downscale) {
  int err;

  memset(s, 0, sizeof(*s));
  s->filename = filename;
  s->width = width;
  s->height = height;
  s->fps = fps;
  mutex_init_reentrant(&s->lock);

  if (!h265) {
    s->remuxing = 1;
  }

  if (downscale) {
    s->downscale = 1;
    s->y_ptr2 = malloc(s->width*s->height);
    s->u_ptr2 = malloc(s->width*s->height/4);
    s->v_ptr2 = malloc(s->width*s->height/4);
  }

  s->segment = -1;

  s->state = OMX_StateLoaded;

  s->codec_config = ((void*)0);

  queue_init(&s->free_in);
  queue_init(&s->done_out);

  pthread_mutex_init(&s->state_lock, ((void*)0));
  pthread_cond_init(&s->state_cv, ((void*)0));

  if (h265) {
    err = OMX_GetHandle(&s->handle, (OMX_STRING)"OMX.qcom.video.encoder.hevc",
                        s, &omx_callbacks);
  } else {
    err = OMX_GetHandle(&s->handle, (OMX_STRING)"OMX.qcom.video.encoder.avc",
                        s, &omx_callbacks);
  }
  assert(err == OMX_ErrorNone);




  OMX_PARAM_PORTDEFINITIONTYPE in_port = {0};
  in_port.nSize = sizeof(in_port);
  in_port.nPortIndex = (OMX_U32) PORT_INDEX_IN;
  err = OMX_GetParameter(s->handle, OMX_IndexParamPortDefinition,
                         (OMX_PTR) &in_port);
  assert(err == OMX_ErrorNone);

  in_port.format.video.nFrameWidth = s->width;
  in_port.format.video.nFrameHeight = s->height;
  in_port.format.video.nStride = VENUS_Y_STRIDE(COLOR_FMT_NV12, s->width);
  in_port.format.video.nSliceHeight = s->height;

  in_port.nBufferSize = VENUS_BUFFER_SIZE(COLOR_FMT_NV12, s->width, s->height);
  in_port.format.video.xFramerate = (s->fps * 65536);
  in_port.format.video.eCompressionFormat = OMX_VIDEO_CodingUnused;

  in_port.format.video.eColorFormat = QOMX_COLOR_FORMATYUV420PackedSemiPlanar32m;

  err = OMX_SetParameter(s->handle, OMX_IndexParamPortDefinition,
                         (OMX_PTR) &in_port);
  assert(err == OMX_ErrorNone);


  err = OMX_GetParameter(s->handle, OMX_IndexParamPortDefinition,
                         (OMX_PTR) &in_port);
  assert(err == OMX_ErrorNone);
  s->num_in_bufs = in_port.nBufferCountActual;






  OMX_PARAM_PORTDEFINITIONTYPE out_port = {0};
  out_port.nSize = sizeof(out_port);
  out_port.nPortIndex = (OMX_U32) PORT_INDEX_OUT;
  err = OMX_GetParameter(s->handle, OMX_IndexParamPortDefinition,
                         (OMX_PTR)&out_port);
  assert(err == OMX_ErrorNone);
  out_port.format.video.nFrameWidth = s->width;
  out_port.format.video.nFrameHeight = s->height;
  out_port.format.video.xFramerate = 0;
  out_port.format.video.nBitrate = bitrate;
  if (h265) {
    out_port.format.video.eCompressionFormat = OMX_VIDEO_CodingHEVC;
  } else {
    out_port.format.video.eCompressionFormat = OMX_VIDEO_CodingAVC;
  }
  out_port.format.video.eColorFormat = OMX_COLOR_FormatUnused;

  err = OMX_SetParameter(s->handle, OMX_IndexParamPortDefinition,
                         (OMX_PTR) &out_port);
  assert(err == OMX_ErrorNone);

  err = OMX_GetParameter(s->handle, OMX_IndexParamPortDefinition,
                         (OMX_PTR) &out_port);
  assert(err == OMX_ErrorNone);
  s->num_out_bufs = out_port.nBufferCountActual;

  OMX_VIDEO_PARAM_BITRATETYPE bitrate_type = {0};
  bitrate_type.nSize = sizeof(bitrate_type);
  bitrate_type.nPortIndex = (OMX_U32) PORT_INDEX_OUT;
  err = OMX_GetParameter(s->handle, OMX_IndexParamVideoBitrate,
                         (OMX_PTR) &bitrate_type);
  assert(err == OMX_ErrorNone);

  bitrate_type.eControlRate = OMX_Video_ControlRateVariable;
  bitrate_type.nTargetBitrate = bitrate;

  err = OMX_SetParameter(s->handle, OMX_IndexParamVideoBitrate,
                         (OMX_PTR) &bitrate_type);
  assert(err == OMX_ErrorNone);

  if (h265) {

    OMX_VIDEO_PARAM_HEVCTYPE hecv_type = {0};
    hecv_type.nSize = sizeof(hecv_type);
    hecv_type.nPortIndex = (OMX_U32) PORT_INDEX_OUT;
    err = OMX_GetParameter(s->handle, (OMX_INDEXTYPE)OMX_IndexParamVideoHevc,
                           (OMX_PTR) &hecv_type);
    assert(err == OMX_ErrorNone);

    hecv_type.eProfile = OMX_VIDEO_HEVCProfileMain;
    hecv_type.eLevel = OMX_VIDEO_HEVCHighTierLevel5;

    err = OMX_SetParameter(s->handle, (OMX_INDEXTYPE)OMX_IndexParamVideoHevc,
                           (OMX_PTR) &hecv_type);
    assert(err == OMX_ErrorNone);
  } else {

    OMX_VIDEO_PARAM_AVCTYPE avc = { 0 };
    avc.nSize = sizeof(avc);
    avc.nPortIndex = (OMX_U32) PORT_INDEX_OUT;
    err = OMX_GetParameter(s->handle, OMX_IndexParamVideoAvc, &avc);
    assert(err == OMX_ErrorNone);

    avc.nBFrames = 0;
    avc.nPFrames = 15;

    avc.eProfile = OMX_VIDEO_AVCProfileBaseline;
    avc.eLevel = OMX_VIDEO_AVCLevel31;

    avc.nAllowedPictureTypes |= OMX_VIDEO_PictureTypeB;
    avc.eLoopFilterMode = OMX_VIDEO_AVCLoopFilterEnable;

    err = OMX_SetParameter(s->handle, OMX_IndexParamVideoAvc, &avc);
    assert(err == OMX_ErrorNone);
  }
  err = OMX_SendCommand(s->handle, OMX_CommandStateSet, OMX_StateIdle, ((void*)0));
  assert(err == OMX_ErrorNone);

  s->in_buf_headers = calloc(s->num_in_bufs, sizeof(OMX_BUFFERHEADERTYPE*));
  for (int i=0; i<s->num_in_bufs; i++) {
    err = OMX_AllocateBuffer(s->handle, &s->in_buf_headers[i], PORT_INDEX_IN, s,
                             in_port.nBufferSize);
    assert(err == OMX_ErrorNone);
  }

  s->out_buf_headers = calloc(s->num_out_bufs, sizeof(OMX_BUFFERHEADERTYPE*));
  for (int i=0; i<s->num_out_bufs; i++) {
    err = OMX_AllocateBuffer(s->handle, &s->out_buf_headers[i], PORT_INDEX_OUT, s,
                             out_port.nBufferSize);
    assert(err == OMX_ErrorNone);
  }

  wait_for_state(s, OMX_StateIdle);

  err = OMX_SendCommand(s->handle, OMX_CommandStateSet, OMX_StateExecuting, ((void*)0));
  assert(err == OMX_ErrorNone);

  wait_for_state(s, OMX_StateExecuting);


  for (int i = 0; i < s->num_out_bufs; i++) {

    err = OMX_FillThisBuffer(s->handle, s->out_buf_headers[i]);
    assert(err == OMX_ErrorNone);
  }


  for (int i = 0; i < s->num_in_bufs; i++) {
    queue_push(&s->free_in, (void*)s->in_buf_headers[i]);
  }
}
