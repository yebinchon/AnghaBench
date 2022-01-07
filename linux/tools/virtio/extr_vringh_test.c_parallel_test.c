
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct vringh_iov {scalar_t__ used; scalar_t__ i; } ;
struct TYPE_4__ {int used; int avail; int desc; } ;
struct vringh {TYPE_2__ vring; } ;
struct vring_desc {int dummy; } ;
struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
struct iovec {int dummy; } ;
struct TYPE_3__ {int features; } ;
struct guest_virtio_device {int to_host_fd; unsigned long notifies; TYPE_1__ vdev; } ;
typedef int rbuf ;
typedef int cpu_set_t ;
typedef int cpu_set ;
typedef int buf ;


 int ALIGN ;
 int ARRAY_SIZE (struct iovec*) ;
 int CPU_SET (unsigned int,int *) ;
 int CPU_ZERO (int *) ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int MAP_SHARED ;
 unsigned long NUM_XFERS ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int RINGSIZE ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WTERMSIG (int) ;
 struct vring_desc* __kfree_ignore_end ;
 struct vring_desc* __kfree_ignore_start ;
 struct vring_desc* __kmalloc_fake ;
 void* __user_addr_max ;
 void* __user_addr_min ;
 int assert (int) ;
 int close (int) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int fflush (int ) ;
 int find_cpus (unsigned int*,unsigned int*) ;
 scalar_t__ fork () ;
 int ftruncate (int,int) ;
 int getpagesize () ;
 int getpid () ;
 void* mmap (int *,int,int,int ,int,int ) ;
 int munmap (void*,int) ;
 int never_callback_guest ;
 int no_notify_host ;
 int open (char*,int,int) ;
 int parallel_notify_host ;
 int pipe (int*) ;
 int printf (char*,unsigned long,unsigned long) ;
 int read (int,char*,int) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int sg_init_table (struct scatterlist*,unsigned int) ;
 int sg_set_buf (struct scatterlist*,void*,int) ;
 int stdout ;
 int user_addr_offset ;
 int virtqueue_add_inbuf (struct virtqueue*,struct scatterlist*,unsigned int,int*,int ) ;
 int virtqueue_add_outbuf (struct virtqueue*,struct scatterlist*,unsigned int,int*,int ) ;
 int virtqueue_disable_cb (struct virtqueue*) ;
 int virtqueue_enable_cb_delayed (struct virtqueue*) ;
 int* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int virtqueue_kick (struct virtqueue*) ;
 int vring_del_virtqueue (struct virtqueue*) ;
 int vring_init (TYPE_2__*,int,void*,int ) ;
 struct virtqueue* vring_new_virtqueue (int ,int,int ,TYPE_1__*,int,int,void*,int ,int ,char*) ;
 int vring_size (int,int ) ;
 int vringh_complete_user (struct vringh*,int,int) ;
 int vringh_get_head (struct vringh*,int*) ;
 int vringh_getdesc_user (struct vringh*,struct vringh_iov*,struct vringh_iov*,int (*) (struct vringh*,int ,struct vringh_range*),int*) ;
 int vringh_init_user (struct vringh*,int ,int,int,int ,int ,int ) ;
 int vringh_iov_init (struct vringh_iov*,struct iovec*,int ) ;
 int vringh_iov_pull_user (struct vringh_iov*,char*,int) ;
 int vringh_iov_push_user (struct vringh_iov*,char*,int) ;
 int vringh_need_notify_user (struct vringh*) ;
 int vringh_notify_disable_user (struct vringh*) ;
 int vringh_notify_enable_user (struct vringh*) ;
 int wait (int*) ;
 int write (int,char*,int) ;

__attribute__((used)) static int parallel_test(u64 features,
    bool (*getrange)(struct vringh *vrh,
       u64 addr, struct vringh_range *r),
    bool fast_vringh)
{
 void *host_map, *guest_map;
 int fd, mapsize, to_guest[2], to_host[2];
 unsigned long xfers = 0, notifies = 0, receives = 0;
 unsigned int first_cpu, last_cpu;
 cpu_set_t cpu_set;
 char buf[128];


 fd = open("/tmp/vringh_test-file", O_RDWR|O_CREAT|O_TRUNC, 0600);
 if (fd < 0)
  err(1, "Opening /tmp/vringh_test-file");


 mapsize = vring_size(RINGSIZE, ALIGN)
  + RINGSIZE * 2 * sizeof(int)
  + RINGSIZE * 6 * sizeof(struct vring_desc);
 mapsize = (mapsize + getpagesize() - 1) & ~(getpagesize() - 1);
 ftruncate(fd, mapsize);


 host_map = mmap(((void*)0), mapsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
 guest_map = mmap(((void*)0), mapsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);

 pipe(to_guest);
 pipe(to_host);

 CPU_ZERO(&cpu_set);
 find_cpus(&first_cpu, &last_cpu);
 printf("Using CPUS %u and %u\n", first_cpu, last_cpu);
 fflush(stdout);

 if (fork() != 0) {
  struct vringh vrh;
  int status, err, rlen = 0;
  char rbuf[5];


  munmap(guest_map, mapsize);

  __user_addr_min = host_map;
  __user_addr_max = __user_addr_min + mapsize;
  user_addr_offset = host_map - guest_map;
  assert(user_addr_offset);

  close(to_guest[0]);
  close(to_host[1]);

  vring_init(&vrh.vring, RINGSIZE, host_map, ALIGN);
  vringh_init_user(&vrh, features, RINGSIZE, 1,
     vrh.vring.desc, vrh.vring.avail, vrh.vring.used);
  CPU_SET(first_cpu, &cpu_set);
  if (sched_setaffinity(getpid(), sizeof(cpu_set), &cpu_set))
   errx(1, "Could not set affinity to cpu %u", first_cpu);

  while (xfers < NUM_XFERS) {
   struct iovec host_riov[2], host_wiov[2];
   struct vringh_iov riov, wiov;
   u16 head, written;

   if (fast_vringh) {
    for (;;) {
     err = vringh_get_head(&vrh, &head);
     if (err != 0)
      break;
     err = vringh_need_notify_user(&vrh);
     if (err < 0)
      errx(1, "vringh_need_notify_user: %i",
           err);
     if (err) {
      write(to_guest[1], "", 1);
      notifies++;
     }
    }
    if (err != 1)
     errx(1, "vringh_get_head");
    written = 0;
    goto complete;
   } else {
    vringh_iov_init(&riov,
      host_riov,
      ARRAY_SIZE(host_riov));
    vringh_iov_init(&wiov,
      host_wiov,
      ARRAY_SIZE(host_wiov));

    err = vringh_getdesc_user(&vrh, &riov, &wiov,
         getrange, &head);
   }
   if (err == 0) {
    err = vringh_need_notify_user(&vrh);
    if (err < 0)
     errx(1, "vringh_need_notify_user: %i",
          err);
    if (err) {
     write(to_guest[1], "", 1);
     notifies++;
    }

    if (!vringh_notify_enable_user(&vrh))
     continue;


    if (read(to_host[0], buf, sizeof(buf)) < 1)
     break;

    vringh_notify_disable_user(&vrh);
    receives++;
    continue;
   }
   if (err != 1)
    errx(1, "vringh_getdesc_user: %i", err);


   if (riov.used) {
    rlen = vringh_iov_pull_user(&riov, rbuf,
           sizeof(rbuf));
    if (rlen != 4)
     errx(1, "vringh_iov_pull_user: %i",
          rlen);
    assert(riov.i == riov.used);
    written = 0;
   } else {
    err = vringh_iov_push_user(&wiov, rbuf, rlen);
    if (err != rlen)
     errx(1, "vringh_iov_push_user: %i",
          err);
    assert(wiov.i == wiov.used);
    written = err;
   }
  complete:
   xfers++;

   err = vringh_complete_user(&vrh, head, written);
   if (err != 0)
    errx(1, "vringh_complete_user: %i", err);
  }

  err = vringh_need_notify_user(&vrh);
  if (err < 0)
   errx(1, "vringh_need_notify_user: %i", err);
  if (err) {
   write(to_guest[1], "", 1);
   notifies++;
  }
  wait(&status);
  if (!WIFEXITED(status))
   errx(1, "Child died with signal %i?", WTERMSIG(status));
  if (WEXITSTATUS(status) != 0)
   errx(1, "Child exited %i?", WEXITSTATUS(status));
  printf("Host: notified %lu, pinged %lu\n", notifies, receives);
  return 0;
 } else {
  struct guest_virtio_device gvdev;
  struct virtqueue *vq;
  unsigned int *data;
  struct vring_desc *indirects;
  unsigned int finished = 0;


  data = guest_map + vring_size(RINGSIZE, ALIGN);
  indirects = (void *)data + (RINGSIZE + 1) * 2 * sizeof(int);


  munmap(host_map, mapsize);

  close(to_guest[1]);
  close(to_host[0]);

  gvdev.vdev.features = features;
  gvdev.to_host_fd = to_host[1];
  gvdev.notifies = 0;

  CPU_SET(first_cpu, &cpu_set);
  if (sched_setaffinity(getpid(), sizeof(cpu_set), &cpu_set))
   err(1, "Could not set affinity to cpu %u", first_cpu);

  vq = vring_new_virtqueue(0, RINGSIZE, ALIGN, &gvdev.vdev, 1,
      0, guest_map,
      fast_vringh ? no_notify_host
      : parallel_notify_host,
      never_callback_guest, "guest vq");


  __kfree_ignore_start = indirects;
  __kfree_ignore_end = indirects + RINGSIZE * 6;

  while (xfers < NUM_XFERS) {
   struct scatterlist sg[4];
   unsigned int num_sg, len;
   int *dbuf, err;
   bool output = !(xfers % 2);


   while ((dbuf = virtqueue_get_buf(vq, &len)) != ((void*)0)) {
    if (len == 4)
     assert(*dbuf == finished - 1);
    else if (!fast_vringh)
     assert(*dbuf == finished);
    finished++;
   }


   dbuf = data + (xfers % (RINGSIZE + 1));

   if (output)
    *dbuf = xfers;
   else
    *dbuf = -1;

   switch ((xfers / sizeof(*dbuf)) % 4) {
   case 0:

    sg_init_table(sg, num_sg = 3);
    sg_set_buf(&sg[0], (void *)dbuf, 1);
    sg_set_buf(&sg[1], (void *)dbuf + 1, 2);
    sg_set_buf(&sg[2], (void *)dbuf + 3, 1);
    break;
   case 1:
    sg_init_table(sg, num_sg = 2);
    sg_set_buf(&sg[0], (void *)dbuf, 1);
    sg_set_buf(&sg[1], (void *)dbuf + 1, 3);
    break;
   case 2:
    sg_init_table(sg, num_sg = 1);
    sg_set_buf(&sg[0], (void *)dbuf, 4);
    break;
   case 3:
    sg_init_table(sg, num_sg = 4);
    sg_set_buf(&sg[0], (void *)dbuf, 1);
    sg_set_buf(&sg[1], (void *)dbuf + 1, 1);
    sg_set_buf(&sg[2], (void *)dbuf + 2, 1);
    sg_set_buf(&sg[3], (void *)dbuf + 3, 1);
    break;
   }



   __kmalloc_fake = indirects + (xfers % RINGSIZE) * 4;
   if (output)
    err = virtqueue_add_outbuf(vq, sg, num_sg, dbuf,
          GFP_KERNEL);
   else
    err = virtqueue_add_inbuf(vq, sg, num_sg,
         dbuf, GFP_KERNEL);

   if (err == -ENOSPC) {
    if (!virtqueue_enable_cb_delayed(vq))
     continue;

    if (read(to_guest[0], buf, sizeof(buf)) < 1)
     break;

    receives++;
    virtqueue_disable_cb(vq);
    continue;
   }

   if (err)
    errx(1, "virtqueue_add_in/outbuf: %i", err);

   xfers++;
   virtqueue_kick(vq);
  }


  while (finished != xfers) {
   int *dbuf;
   unsigned int len;


   dbuf = virtqueue_get_buf(vq, &len);
   if (dbuf) {
    if (len == 4)
     assert(*dbuf == finished - 1);
    else
     assert(len == 0);
    finished++;
    continue;
   }

   if (!virtqueue_enable_cb_delayed(vq))
    continue;
   if (read(to_guest[0], buf, sizeof(buf)) < 1)
    break;

   receives++;
   virtqueue_disable_cb(vq);
  }

  printf("Guest: notified %lu, pinged %lu\n",
         gvdev.notifies, receives);
  vring_del_virtqueue(vq);
  return 0;
 }
}
