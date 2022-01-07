
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_in_bufs; int num_out_bufs; int * v_ptr2; int * u_ptr2; int * y_ptr2; scalar_t__ downscale; int handle; int * out_buf_headers; int * in_buf_headers; int open; } ;
typedef TYPE_1__ EncoderState ;


 int OMX_CommandStateSet ;
 int OMX_ErrorNone ;
 int OMX_FreeBuffer (int ,int ,int ) ;
 int OMX_FreeHandle (int ) ;
 int OMX_SendCommand (int ,int ,int ,int *) ;
 int OMX_StateIdle ;
 int OMX_StateLoaded ;
 int PORT_INDEX_IN ;
 int PORT_INDEX_OUT ;
 int assert (int) ;
 int free (int *) ;
 int wait_for_state (TYPE_1__*,int ) ;

void encoder_destroy(EncoderState *s) {
  int err;

  assert(!s->open);

  err = OMX_SendCommand(s->handle, OMX_CommandStateSet, OMX_StateIdle, ((void*)0));
  assert(err == OMX_ErrorNone);

  wait_for_state(s, OMX_StateIdle);

  err = OMX_SendCommand(s->handle, OMX_CommandStateSet, OMX_StateLoaded, ((void*)0));
  assert(err == OMX_ErrorNone);

  for (int i=0; i<s->num_in_bufs; i++) {
    err = OMX_FreeBuffer(s->handle, PORT_INDEX_IN, s->in_buf_headers[i]);
    assert(err == OMX_ErrorNone);
  }
  free(s->in_buf_headers);

  for (int i=0; i<s->num_out_bufs; i++) {
    err = OMX_FreeBuffer(s->handle, PORT_INDEX_OUT, s->out_buf_headers[i]);
    assert(err == OMX_ErrorNone);
  }
  free(s->out_buf_headers);

  wait_for_state(s, OMX_StateLoaded);

  err = OMX_FreeHandle(s->handle);
  assert(err == OMX_ErrorNone);

  if (s->downscale) {
    free(s->y_ptr2);
    free(s->u_ptr2);
    free(s->v_ptr2);
  }
}
