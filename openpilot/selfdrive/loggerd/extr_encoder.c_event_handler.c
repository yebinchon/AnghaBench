
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; int state_lock; int state_cv; } ;
typedef int OMX_U32 ;
typedef TYPE_1__* OMX_PTR ;
typedef int OMX_HANDLETYPE ;
typedef int OMX_EVENTTYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ EncoderState ;


 int LOG (char*,int) ;
 int LOGE (char*,int) ;
 int OMX_CommandStateSet ;
 int OMX_ErrorNone ;


 int assert (int) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static OMX_ERRORTYPE event_handler(OMX_HANDLETYPE component, OMX_PTR app_data, OMX_EVENTTYPE event,
                                   OMX_U32 data1, OMX_U32 data2, OMX_PTR event_data) {
  EncoderState *s = app_data;

  switch (event) {
  case 129:
    assert(data1 == OMX_CommandStateSet);
    LOG("set state event 0x%x", data2);
    pthread_mutex_lock(&s->state_lock);
    s->state = data2;
    pthread_cond_broadcast(&s->state_cv);
    pthread_mutex_unlock(&s->state_lock);
    break;
  case 128:
    LOGE("OMX error 0x%08x", data1);

    break;
  default:
    LOGE("unhandled event %d", event);
    assert(0);
    break;
  }

  pthread_mutex_unlock(&s->state_lock);

  return OMX_ErrorNone;
}
