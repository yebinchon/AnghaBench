#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_in_bufs; int num_out_bufs; int /*<<< orphan*/ * v_ptr2; int /*<<< orphan*/ * u_ptr2; int /*<<< orphan*/ * y_ptr2; scalar_t__ downscale; int /*<<< orphan*/  handle; int /*<<< orphan*/ * out_buf_headers; int /*<<< orphan*/ * in_buf_headers; int /*<<< orphan*/  open; } ;
typedef  TYPE_1__ EncoderState ;

/* Variables and functions */
 int /*<<< orphan*/  OMX_CommandStateSet ; 
 int OMX_ErrorNone ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OMX_StateIdle ; 
 int /*<<< orphan*/  OMX_StateLoaded ; 
 int /*<<< orphan*/  PORT_INDEX_IN ; 
 int /*<<< orphan*/  PORT_INDEX_OUT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC6(EncoderState *s) {
  int err;

  FUNC3(!s->open);

  err = FUNC2(s->handle, OMX_CommandStateSet, OMX_StateIdle, NULL);
  FUNC3(err == OMX_ErrorNone);

  FUNC5(s, OMX_StateIdle);

  err = FUNC2(s->handle, OMX_CommandStateSet, OMX_StateLoaded, NULL);
  FUNC3(err == OMX_ErrorNone);

  for (int i=0; i<s->num_in_bufs; i++) {
    err = FUNC0(s->handle, PORT_INDEX_IN, s->in_buf_headers[i]);
    FUNC3(err == OMX_ErrorNone);
  }
  FUNC4(s->in_buf_headers);

  for (int i=0; i<s->num_out_bufs; i++) {
    err = FUNC0(s->handle, PORT_INDEX_OUT, s->out_buf_headers[i]);
    FUNC3(err == OMX_ErrorNone);
  }
  FUNC4(s->out_buf_headers);

  FUNC5(s, OMX_StateLoaded);

  err = FUNC1(s->handle);
  FUNC3(err == OMX_ErrorNone);

  if (s->downscale) {
    FUNC4(s->y_ptr2);
    FUNC4(s->u_ptr2);
    FUNC4(s->v_ptr2);
  }
}