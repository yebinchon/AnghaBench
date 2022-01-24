#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {long long timestamp_eof; } ;
typedef  TYPE_1__ VIPCBufExtra ;
struct TYPE_15__ {int opening; int rotating; int segment; int next_segment; int counter; int width; int dirty; int closing; int /*<<< orphan*/  lock; int /*<<< orphan*/  done_out; int /*<<< orphan*/  handle; int /*<<< orphan*/  height; int /*<<< orphan*/ * v_ptr2; int /*<<< orphan*/ * u_ptr2; int /*<<< orphan*/ * y_ptr2; scalar_t__ downscale; int /*<<< orphan*/  next_path; int /*<<< orphan*/  free_in; int /*<<< orphan*/  open; } ;
struct TYPE_14__ {long long nTimeStamp; scalar_t__ nOffset; int /*<<< orphan*/  nFlags; int /*<<< orphan*/  nFilledLen; int /*<<< orphan*/ * pBuffer; } ;
typedef  TYPE_2__ OMX_BUFFERHEADERTYPE ;
typedef  TYPE_3__ EncoderState ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_FMT_NV12 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMX_BUFFERFLAG_ENDOFFRAME ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int OMX_ErrorNone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  kFilterNone ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(EncoderState *s,
                         const uint8_t *y_ptr, const uint8_t *u_ptr, const uint8_t *v_ptr,
                         int in_width, int in_height,
                         int *frame_segment, VIPCBufExtra *extra) {
  int err;
  FUNC11(&s->lock);

  if (s->opening) {
    FUNC9(s, s->next_path);
    s->opening = false;
  }

  if (!s->open) {
    FUNC12(&s->lock);
    return -1;
  }

  // this sometimes freezes... put it outside the encoder lock so we can still trigger rotates...
  // THIS IS A REALLY BAD IDEA, but apparently the race has to happen 30 times to trigger this
  FUNC12(&s->lock);
  OMX_BUFFERHEADERTYPE* in_buf = FUNC13(&s->free_in);
  FUNC11(&s->lock);

  if (s->rotating) {
    FUNC8(s);
    FUNC9(s, s->next_path);
    s->segment = s->next_segment;
    s->rotating = false;
  }

  int ret = s->counter;

  uint8_t *in_buf_ptr = in_buf->pBuffer;
  // printf("in_buf ptr %p\n", in_buf_ptr);

  uint8_t *in_y_ptr = in_buf_ptr;
  int in_y_stride = FUNC6(COLOR_FMT_NV12, s->width);
  int in_uv_stride = FUNC4(COLOR_FMT_NV12, s->width);
  // uint8_t *in_uv_ptr = in_buf_ptr + (s->width * s->height);
  uint8_t *in_uv_ptr = in_buf_ptr + (in_y_stride * FUNC5(COLOR_FMT_NV12, s->height));

  if (s->downscale) {
    FUNC0(y_ptr, in_width,
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
  err = FUNC1(y_ptr, s->width,
                   u_ptr, s->width/2,
                   v_ptr, s->width/2,
                   in_y_ptr, in_y_stride,
                   in_uv_ptr, in_uv_stride,
                   s->width, s->height);
  FUNC7(err == 0);

  // in_buf->nFilledLen = (s->width*s->height) + (s->width*s->height/2);
  in_buf->nFilledLen = FUNC3(COLOR_FMT_NV12, s->width, s->height);
  in_buf->nFlags = OMX_BUFFERFLAG_ENDOFFRAME;
  in_buf->nOffset = 0;
  in_buf->nTimeStamp = extra->timestamp_eof/1000LL;  // OMX_TICKS, in microseconds

  err = FUNC2(s->handle, in_buf);
  FUNC7(err == OMX_ErrorNone);

  // pump output
  while (true) {
    OMX_BUFFERHEADERTYPE *out_buf = FUNC14(&s->done_out);
    if (!out_buf) {
      break;
    }
    FUNC10(s, out_buf);
  }

  s->dirty = true;

  s->counter++;

  if (frame_segment) {
    *frame_segment = s->segment;
  }

  if (s->closing) {
    FUNC8(s);
    s->closing = false;
  }

  FUNC12(&s->lock);
  return ret;
}