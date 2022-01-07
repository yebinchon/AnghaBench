
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {long long timestamp_eof; } ;
typedef TYPE_1__ VIPCBufExtra ;
struct TYPE_15__ {int opening; int rotating; int segment; int next_segment; int counter; int width; int dirty; int closing; int lock; int done_out; int handle; int height; int * v_ptr2; int * u_ptr2; int * y_ptr2; scalar_t__ downscale; int next_path; int free_in; int open; } ;
struct TYPE_14__ {long long nTimeStamp; scalar_t__ nOffset; int nFlags; int nFilledLen; int * pBuffer; } ;
typedef TYPE_2__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_3__ EncoderState ;


 int COLOR_FMT_NV12 ;
 int I420Scale (int const*,int,int const*,int,int const*,int,int,int,int *,int,int *,int,int *,int,int,int ,int ) ;
 int I420ToNV12 (int const*,int,int const*,int,int const*,int,int *,int,int *,int,int,int ) ;
 int OMX_BUFFERFLAG_ENDOFFRAME ;
 int OMX_EmptyThisBuffer (int ,TYPE_2__*) ;
 int OMX_ErrorNone ;
 int VENUS_BUFFER_SIZE (int ,int,int ) ;
 int VENUS_UV_STRIDE (int ,int) ;
 int VENUS_Y_SCANLINES (int ,int ) ;
 int VENUS_Y_STRIDE (int ,int) ;
 int assert (int) ;
 int encoder_close (TYPE_3__*) ;
 int encoder_open (TYPE_3__*,int ) ;
 int handle_out_buf (TYPE_3__*,TYPE_2__*) ;
 int kFilterNone ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__* queue_pop (int *) ;
 TYPE_2__* queue_try_pop (int *) ;

int encoder_encode_frame(EncoderState *s,
                         const uint8_t *y_ptr, const uint8_t *u_ptr, const uint8_t *v_ptr,
                         int in_width, int in_height,
                         int *frame_segment, VIPCBufExtra *extra) {
  int err;
  pthread_mutex_lock(&s->lock);

  if (s->opening) {
    encoder_open(s, s->next_path);
    s->opening = 0;
  }

  if (!s->open) {
    pthread_mutex_unlock(&s->lock);
    return -1;
  }



  pthread_mutex_unlock(&s->lock);
  OMX_BUFFERHEADERTYPE* in_buf = queue_pop(&s->free_in);
  pthread_mutex_lock(&s->lock);

  if (s->rotating) {
    encoder_close(s);
    encoder_open(s, s->next_path);
    s->segment = s->next_segment;
    s->rotating = 0;
  }

  int ret = s->counter;

  uint8_t *in_buf_ptr = in_buf->pBuffer;


  uint8_t *in_y_ptr = in_buf_ptr;
  int in_y_stride = VENUS_Y_STRIDE(COLOR_FMT_NV12, s->width);
  int in_uv_stride = VENUS_UV_STRIDE(COLOR_FMT_NV12, s->width);

  uint8_t *in_uv_ptr = in_buf_ptr + (in_y_stride * VENUS_Y_SCANLINES(COLOR_FMT_NV12, s->height));

  if (s->downscale) {
    I420Scale(y_ptr, in_width,
              u_ptr, in_width/2,
              v_ptr, in_width/2,
              in_width, in_height,
              s->y_ptr2, s->width,
              s->u_ptr2, s->width/2,
              s->v_ptr2, s->width/2,
              s->width, s->height,
              kFilterNone);
    y_ptr = s->y_ptr2;
    u_ptr = s->u_ptr2;
    v_ptr = s->v_ptr2;
  }
  err = I420ToNV12(y_ptr, s->width,
                   u_ptr, s->width/2,
                   v_ptr, s->width/2,
                   in_y_ptr, in_y_stride,
                   in_uv_ptr, in_uv_stride,
                   s->width, s->height);
  assert(err == 0);


  in_buf->nFilledLen = VENUS_BUFFER_SIZE(COLOR_FMT_NV12, s->width, s->height);
  in_buf->nFlags = OMX_BUFFERFLAG_ENDOFFRAME;
  in_buf->nOffset = 0;
  in_buf->nTimeStamp = extra->timestamp_eof/1000LL;

  err = OMX_EmptyThisBuffer(s->handle, in_buf);
  assert(err == OMX_ErrorNone);


  while (1) {
    OMX_BUFFERHEADERTYPE *out_buf = queue_try_pop(&s->done_out);
    if (!out_buf) {
      break;
    }
    handle_out_buf(s, out_buf);
  }

  s->dirty = 1;

  s->counter++;

  if (frame_segment) {
    *frame_segment = s->segment;
  }

  if (s->closing) {
    encoder_close(s);
    s->closing = 0;
  }

  pthread_mutex_unlock(&s->lock);
  return ret;
}
