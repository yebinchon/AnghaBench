#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pb; } ;
struct TYPE_11__ {int open; int dirty; int /*<<< orphan*/  lock; int /*<<< orphan*/  lock_path; int /*<<< orphan*/  of; TYPE_7__* ofmt_ctx; scalar_t__ remuxing; int /*<<< orphan*/  done_out; int /*<<< orphan*/  handle; int /*<<< orphan*/  free_in; } ;
struct TYPE_10__ {int nFlags; scalar_t__ nTimeStamp; scalar_t__ nOffset; scalar_t__ nFilledLen; } ;
typedef  TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef  TYPE_2__ EncoderState ;

/* Variables and functions */
 int OMX_BUFFERFLAG_EOS ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int OMX_ErrorNone ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(EncoderState *s) {
  int err;

  FUNC7(&s->lock);

  if (s->open) {
    if (s->dirty) {
      // drain output only if there could be frames in the encoder

      OMX_BUFFERHEADERTYPE* in_buf = FUNC9(&s->free_in);
      in_buf->nFilledLen = 0;
      in_buf->nOffset = 0;
      in_buf->nFlags = OMX_BUFFERFLAG_EOS;
      in_buf->nTimeStamp = 0;

      err = FUNC0(s->handle, in_buf);
      FUNC1(err == OMX_ErrorNone);

      while (true) {
        OMX_BUFFERHEADERTYPE *out_buf = FUNC9(&s->done_out);

        FUNC6(s, out_buf);

        if (out_buf->nFlags & OMX_BUFFERFLAG_EOS) {
          break;
        }
      }
      s->dirty = false;
    }

    if (s->remuxing) {
      FUNC2(s->ofmt_ctx);
      FUNC4(&s->ofmt_ctx->pb);
      FUNC3(s->ofmt_ctx);
    } else {
      FUNC5(s->of);
    }
    FUNC10(s->lock_path);
  }
  s->open = false;

  FUNC8(&s->lock);
}