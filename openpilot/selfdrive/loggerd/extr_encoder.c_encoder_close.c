
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pb; } ;
struct TYPE_11__ {int open; int dirty; int lock; int lock_path; int of; TYPE_7__* ofmt_ctx; scalar_t__ remuxing; int done_out; int handle; int free_in; } ;
struct TYPE_10__ {int nFlags; scalar_t__ nTimeStamp; scalar_t__ nOffset; scalar_t__ nFilledLen; } ;
typedef TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_2__ EncoderState ;


 int OMX_BUFFERFLAG_EOS ;
 int OMX_EmptyThisBuffer (int ,TYPE_1__*) ;
 int OMX_ErrorNone ;
 int assert (int) ;
 int av_write_trailer (TYPE_7__*) ;
 int avformat_free_context (TYPE_7__*) ;
 int avio_closep (int *) ;
 int fclose (int ) ;
 int handle_out_buf (TYPE_2__*,TYPE_1__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* queue_pop (int *) ;
 int unlink (int ) ;

void encoder_close(EncoderState *s) {
  int err;

  pthread_mutex_lock(&s->lock);

  if (s->open) {
    if (s->dirty) {


      OMX_BUFFERHEADERTYPE* in_buf = queue_pop(&s->free_in);
      in_buf->nFilledLen = 0;
      in_buf->nOffset = 0;
      in_buf->nFlags = OMX_BUFFERFLAG_EOS;
      in_buf->nTimeStamp = 0;

      err = OMX_EmptyThisBuffer(s->handle, in_buf);
      assert(err == OMX_ErrorNone);

      while (1) {
        OMX_BUFFERHEADERTYPE *out_buf = queue_pop(&s->done_out);

        handle_out_buf(s, out_buf);

        if (out_buf->nFlags & OMX_BUFFERFLAG_EOS) {
          break;
        }
      }
      s->dirty = 0;
    }

    if (s->remuxing) {
      av_write_trailer(s->ofmt_ctx);
      avio_closep(&s->ofmt_ctx->pb);
      avformat_free_context(s->ofmt_ctx);
    } else {
      fclose(s->of);
    }
    unlink(s->lock_path);
  }
  s->open = 0;

  pthread_mutex_unlock(&s->lock);
}
