
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int lock; int req_frames; int flip_queue_offset; } ;
struct vo {struct vo_internal* in; } ;
typedef int int64_t ;


 int MPCLAMP (int,int,int ) ;
 int VO_MAX_REQ_FRAMES ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void vo_set_queue_params(struct vo *vo, int64_t offset_us, int num_req_frames)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    in->flip_queue_offset = offset_us;
    in->req_frames = MPCLAMP(num_req_frames, 1, VO_MAX_REQ_FRAMES);
    pthread_mutex_unlock(&in->lock);
}
