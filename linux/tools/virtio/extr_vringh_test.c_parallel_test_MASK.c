#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct vringh_iov {scalar_t__ used; scalar_t__ i; } ;
struct TYPE_4__ {int /*<<< orphan*/  used; int /*<<< orphan*/  avail; int /*<<< orphan*/  desc; } ;
struct vringh {TYPE_2__ vring; } ;
struct vring_desc {int dummy; } ;
struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
struct iovec {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  features; } ;
struct guest_virtio_device {int to_host_fd; unsigned long notifies; TYPE_1__ vdev; } ;
typedef  int /*<<< orphan*/  rbuf ;
typedef  int /*<<< orphan*/  cpu_set_t ;
typedef  int /*<<< orphan*/  cpu_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct iovec*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 unsigned long NUM_XFERS ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int RINGSIZE ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 struct vring_desc* __kfree_ignore_end ; 
 struct vring_desc* __kfree_ignore_start ; 
 struct vring_desc* __kmalloc_fake ; 
 void* __user_addr_max ; 
 void* __user_addr_min ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* FUNC16 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*,int) ; 
 int /*<<< orphan*/  never_callback_guest ; 
 int /*<<< orphan*/  no_notify_host ; 
 int FUNC18 (char*,int,int) ; 
 int /*<<< orphan*/  parallel_notify_host ; 
 int /*<<< orphan*/  FUNC19 (int*) ; 
 int /*<<< orphan*/  FUNC20 (char*,unsigned long,unsigned long) ; 
 int FUNC21 (int,char*,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (struct scatterlist*,void*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int user_addr_offset ; 
 int FUNC25 (struct virtqueue*,struct scatterlist*,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct virtqueue*,struct scatterlist*,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC28 (struct virtqueue*) ; 
 int* FUNC29 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC30 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC31 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,int,void*,int /*<<< orphan*/ ) ; 
 struct virtqueue* FUNC33 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC34 (int,int /*<<< orphan*/ ) ; 
 int FUNC35 (struct vringh*,int,int) ; 
 int FUNC36 (struct vringh*,int*) ; 
 int FUNC37 (struct vringh*,struct vringh_iov*,struct vringh_iov*,int (*) (struct vringh*,int /*<<< orphan*/ ,struct vringh_range*),int*) ; 
 int /*<<< orphan*/  FUNC38 (struct vringh*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct vringh_iov*,struct iovec*,int /*<<< orphan*/ ) ; 
 int FUNC40 (struct vringh_iov*,char*,int) ; 
 int FUNC41 (struct vringh_iov*,char*,int) ; 
 int FUNC42 (struct vringh*) ; 
 int /*<<< orphan*/  FUNC43 (struct vringh*) ; 
 int /*<<< orphan*/  FUNC44 (struct vringh*) ; 
 int /*<<< orphan*/  FUNC45 (int*) ; 
 int /*<<< orphan*/  FUNC46 (int,char*,int) ; 

__attribute__((used)) static int FUNC47(u64 features,
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

	/* Create real file to mmap. */
	fd = FUNC18("/tmp/vringh_test-file", O_RDWR|O_CREAT|O_TRUNC, 0600);
	if (fd < 0)
		FUNC8(1, "Opening /tmp/vringh_test-file");

	/* Extra room at the end for some data, and indirects */
	mapsize = FUNC34(RINGSIZE, ALIGN)
		+ RINGSIZE * 2 * sizeof(int)
		+ RINGSIZE * 6 * sizeof(struct vring_desc);
	mapsize = (mapsize + FUNC14() - 1) & ~(FUNC14() - 1);
	FUNC13(fd, mapsize);

	/* Parent and child use separate addresses, to check our mapping logic! */
	host_map = FUNC16(NULL, mapsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	guest_map = FUNC16(NULL, mapsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);

	FUNC19(to_guest);
	FUNC19(to_host);

	FUNC2(&cpu_set);
	FUNC11(&first_cpu, &last_cpu);
	FUNC20("Using CPUS %u and %u\n", first_cpu, last_cpu);
	FUNC10(stdout);

	if (FUNC12() != 0) {
		struct vringh vrh;
		int status, err, rlen = 0;
		char rbuf[5];

		/* We are the host: never access guest addresses! */
		FUNC17(guest_map, mapsize);

		__user_addr_min = host_map;
		__user_addr_max = __user_addr_min + mapsize;
		user_addr_offset = host_map - guest_map;
		FUNC6(user_addr_offset);

		FUNC7(to_guest[0]);
		FUNC7(to_host[1]);

		FUNC32(&vrh.vring, RINGSIZE, host_map, ALIGN);
		FUNC38(&vrh, features, RINGSIZE, true,
				 vrh.vring.desc, vrh.vring.avail, vrh.vring.used);
		FUNC1(first_cpu, &cpu_set);
		if (FUNC22(FUNC15(), sizeof(cpu_set), &cpu_set))
			FUNC9(1, "Could not set affinity to cpu %u", first_cpu);

		while (xfers < NUM_XFERS) {
			struct iovec host_riov[2], host_wiov[2];
			struct vringh_iov riov, wiov;
			u16 head, written;

			if (fast_vringh) {
				for (;;) {
					err = FUNC36(&vrh, &head);
					if (err != 0)
						break;
					err = FUNC42(&vrh);
					if (err < 0)
						FUNC9(1, "vringh_need_notify_user: %i",
						     err);
					if (err) {
						FUNC46(to_guest[1], "", 1);
						notifies++;
					}
				}
				if (err != 1)
					FUNC9(1, "vringh_get_head");
				written = 0;
				goto complete;
			} else {
				FUNC39(&riov,
						host_riov,
						FUNC0(host_riov));
				FUNC39(&wiov,
						host_wiov,
						FUNC0(host_wiov));

				err = FUNC37(&vrh, &riov, &wiov,
							  getrange, &head);
			}
			if (err == 0) {
				err = FUNC42(&vrh);
				if (err < 0)
					FUNC9(1, "vringh_need_notify_user: %i",
					     err);
				if (err) {
					FUNC46(to_guest[1], "", 1);
					notifies++;
				}

				if (!FUNC44(&vrh))
					continue;

				/* Swallow all notifies at once. */
				if (FUNC21(to_host[0], buf, sizeof(buf)) < 1)
					break;

				FUNC43(&vrh);
				receives++;
				continue;
			}
			if (err != 1)
				FUNC9(1, "vringh_getdesc_user: %i", err);

			/* We simply copy bytes. */
			if (riov.used) {
				rlen = FUNC40(&riov, rbuf,
							    sizeof(rbuf));
				if (rlen != 4)
					FUNC9(1, "vringh_iov_pull_user: %i",
					     rlen);
				FUNC6(riov.i == riov.used);
				written = 0;
			} else {
				err = FUNC41(&wiov, rbuf, rlen);
				if (err != rlen)
					FUNC9(1, "vringh_iov_push_user: %i",
					     err);
				FUNC6(wiov.i == wiov.used);
				written = err;
			}
		complete:
			xfers++;

			err = FUNC35(&vrh, head, written);
			if (err != 0)
				FUNC9(1, "vringh_complete_user: %i", err);
		}

		err = FUNC42(&vrh);
		if (err < 0)
			FUNC9(1, "vringh_need_notify_user: %i", err);
		if (err) {
			FUNC46(to_guest[1], "", 1);
			notifies++;
		}
		FUNC45(&status);
		if (!FUNC4(status))
			FUNC9(1, "Child died with signal %i?", FUNC5(status));
		if (FUNC3(status) != 0)
			FUNC9(1, "Child exited %i?", FUNC3(status));
		FUNC20("Host: notified %lu, pinged %lu\n", notifies, receives);
		return 0;
	} else {
		struct guest_virtio_device gvdev;
		struct virtqueue *vq;
		unsigned int *data;
		struct vring_desc *indirects;
		unsigned int finished = 0;

		/* We pass sg[]s pointing into here, but we need RINGSIZE+1 */
		data = guest_map + FUNC34(RINGSIZE, ALIGN);
		indirects = (void *)data + (RINGSIZE + 1) * 2 * sizeof(int);

		/* We are the guest. */
		FUNC17(host_map, mapsize);

		FUNC7(to_guest[1]);
		FUNC7(to_host[0]);

		gvdev.vdev.features = features;
		gvdev.to_host_fd = to_host[1];
		gvdev.notifies = 0;

		FUNC1(first_cpu, &cpu_set);
		if (FUNC22(FUNC15(), sizeof(cpu_set), &cpu_set))
			FUNC8(1, "Could not set affinity to cpu %u", first_cpu);

		vq = FUNC33(0, RINGSIZE, ALIGN, &gvdev.vdev, true,
					 false, guest_map,
					 fast_vringh ? no_notify_host
					 : parallel_notify_host,
					 never_callback_guest, "guest vq");

		/* Don't kfree indirects. */
		__kfree_ignore_start = indirects;
		__kfree_ignore_end = indirects + RINGSIZE * 6;

		while (xfers < NUM_XFERS) {
			struct scatterlist sg[4];
			unsigned int num_sg, len;
			int *dbuf, err;
			bool output = !(xfers % 2);

			/* Consume bufs. */
			while ((dbuf = FUNC29(vq, &len)) != NULL) {
				if (len == 4)
					FUNC6(*dbuf == finished - 1);
				else if (!fast_vringh)
					FUNC6(*dbuf == finished);
				finished++;
			}

			/* Produce a buffer. */
			dbuf = data + (xfers % (RINGSIZE + 1));

			if (output)
				*dbuf = xfers;
			else
				*dbuf = -1;

			switch ((xfers / sizeof(*dbuf)) % 4) {
			case 0:
				/* Nasty three-element sg list. */
				FUNC23(sg, num_sg = 3);
				FUNC24(&sg[0], (void *)dbuf, 1);
				FUNC24(&sg[1], (void *)dbuf + 1, 2);
				FUNC24(&sg[2], (void *)dbuf + 3, 1);
				break;
			case 1:
				FUNC23(sg, num_sg = 2);
				FUNC24(&sg[0], (void *)dbuf, 1);
				FUNC24(&sg[1], (void *)dbuf + 1, 3);
				break;
			case 2:
				FUNC23(sg, num_sg = 1);
				FUNC24(&sg[0], (void *)dbuf, 4);
				break;
			case 3:
				FUNC23(sg, num_sg = 4);
				FUNC24(&sg[0], (void *)dbuf, 1);
				FUNC24(&sg[1], (void *)dbuf + 1, 1);
				FUNC24(&sg[2], (void *)dbuf + 2, 1);
				FUNC24(&sg[3], (void *)dbuf + 3, 1);
				break;
			}

			/* May allocate an indirect, so force it to allocate
			 * user addr */
			__kmalloc_fake = indirects + (xfers % RINGSIZE) * 4;
			if (output)
				err = FUNC26(vq, sg, num_sg, dbuf,
							   GFP_KERNEL);
			else
				err = FUNC25(vq, sg, num_sg,
							  dbuf, GFP_KERNEL);

			if (err == -ENOSPC) {
				if (!FUNC28(vq))
					continue;
				/* Swallow all notifies at once. */
				if (FUNC21(to_guest[0], buf, sizeof(buf)) < 1)
					break;
				
				receives++;
				FUNC27(vq);
				continue;
			}

			if (err)
				FUNC9(1, "virtqueue_add_in/outbuf: %i", err);

			xfers++;
			FUNC30(vq);
		}

		/* Any extra? */
		while (finished != xfers) {
			int *dbuf;
			unsigned int len;

			/* Consume bufs. */
			dbuf = FUNC29(vq, &len);
			if (dbuf) {
				if (len == 4)
					FUNC6(*dbuf == finished - 1);
				else
					FUNC6(len == 0);
				finished++;
				continue;
			}

			if (!FUNC28(vq))
				continue;
			if (FUNC21(to_guest[0], buf, sizeof(buf)) < 1)
				break;
				
			receives++;
			FUNC27(vq);
		}

		FUNC20("Guest: notified %lu, pinged %lu\n",
		       gvdev.notifies, receives);
		FUNC31(vq);
		return 0;
	}
}