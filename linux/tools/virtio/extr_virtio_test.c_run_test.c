
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vq_info {int vq; } ;
struct vdev_info {int control; scalar_t__ buf; int buf_size; } ;
struct scatterlist {int dummy; } ;


 int GFP_ATOMIC ;
 int VHOST_TEST_RUN ;
 int assert (int) ;
 int fprintf (int ,char*,long long) ;
 int ioctl (int ,int ,int*) ;
 scalar_t__ likely (int) ;
 int sg_init_one (struct scatterlist*,scalar_t__,int ) ;
 int stderr ;
 scalar_t__ unlikely (int) ;
 int virtqueue_add_outbuf (int ,struct scatterlist*,int,scalar_t__,int ) ;
 int virtqueue_disable_cb (int ) ;
 scalar_t__ virtqueue_enable_cb (int ) ;
 scalar_t__ virtqueue_enable_cb_delayed (int ) ;
 scalar_t__ virtqueue_get_buf (int ,unsigned int*) ;
 int virtqueue_kick (int ) ;
 int wait_for_interrupt (struct vdev_info*) ;

__attribute__((used)) static void run_test(struct vdev_info *dev, struct vq_info *vq,
       bool delayed, int bufs)
{
 struct scatterlist sl;
 long started = 0, completed = 0;
 long completed_before;
 int r, test = 1;
 unsigned len;
 long long spurious = 0;
 r = ioctl(dev->control, VHOST_TEST_RUN, &test);
 assert(r >= 0);
 for (;;) {
  virtqueue_disable_cb(vq->vq);
  completed_before = completed;
  do {
   if (started < bufs) {
    sg_init_one(&sl, dev->buf, dev->buf_size);
    r = virtqueue_add_outbuf(vq->vq, &sl, 1,
        dev->buf + started,
        GFP_ATOMIC);
    if (likely(r == 0)) {
     ++started;
     if (unlikely(!virtqueue_kick(vq->vq)))
      r = -1;
    }
   } else
    r = -1;


   if (virtqueue_get_buf(vq->vq, &len)) {
    ++completed;
    r = 0;
   }

  } while (r == 0);
  if (completed == completed_before)
   ++spurious;
  assert(completed <= bufs);
  assert(started <= bufs);
  if (completed == bufs)
   break;
  if (delayed) {
   if (virtqueue_enable_cb_delayed(vq->vq))
    wait_for_interrupt(dev);
  } else {
   if (virtqueue_enable_cb(vq->vq))
    wait_for_interrupt(dev);
  }
 }
 test = 0;
 r = ioctl(dev->control, VHOST_TEST_RUN, &test);
 assert(r >= 0);
 fprintf(stderr, "spurious wakeups: 0x%llx\n", spurious);
}
