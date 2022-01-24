#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvm_ioeventfd {int flags; int /*<<< orphan*/  datamatch; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; int /*<<< orphan*/  fd; } ;
struct kvm {int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  ioeventfds; } ;
struct eventfd_ctx {int dummy; } ;
struct _ioeventfd {int bus_idx; int wildcard; int /*<<< orphan*/  list; int /*<<< orphan*/  dev; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; int /*<<< orphan*/  datamatch; struct eventfd_ctx* eventfd; } ;
typedef  enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;
struct TYPE_2__ {int /*<<< orphan*/  ioeventfd_count; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct eventfd_ctx*) ; 
 int KVM_IOEVENTFD_FLAG_DATAMATCH ; 
 int FUNC2 (struct eventfd_ctx*) ; 
 struct eventfd_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eventfd_ctx*) ; 
 scalar_t__ FUNC5 (struct kvm*,struct _ioeventfd*) ; 
 int /*<<< orphan*/  ioeventfd_ops ; 
 int /*<<< orphan*/  FUNC6 (struct _ioeventfd*) ; 
 TYPE_1__* FUNC7 (struct kvm*,int) ; 
 int FUNC8 (struct kvm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct _ioeventfd* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct kvm *kvm,
				enum kvm_bus bus_idx,
				struct kvm_ioeventfd *args)
{

	struct eventfd_ctx *eventfd;
	struct _ioeventfd *p;
	int ret;

	eventfd = FUNC3(args->fd);
	if (FUNC1(eventfd))
		return FUNC2(eventfd);

	p = FUNC10(sizeof(*p), GFP_KERNEL_ACCOUNT);
	if (!p) {
		ret = -ENOMEM;
		goto fail;
	}

	FUNC0(&p->list);
	p->addr    = args->addr;
	p->bus_idx = bus_idx;
	p->length  = args->len;
	p->eventfd = eventfd;

	/* The datamatch feature is optional, otherwise this is a wildcard */
	if (args->flags & KVM_IOEVENTFD_FLAG_DATAMATCH)
		p->datamatch = args->datamatch;
	else
		p->wildcard = true;

	FUNC12(&kvm->slots_lock);

	/* Verify that there isn't a match already */
	if (FUNC5(kvm, p)) {
		ret = -EEXIST;
		goto unlock_fail;
	}

	FUNC9(&p->dev, &ioeventfd_ops);

	ret = FUNC8(kvm, bus_idx, p->addr, p->length,
				      &p->dev);
	if (ret < 0)
		goto unlock_fail;

	FUNC7(kvm, bus_idx)->ioeventfd_count++;
	FUNC11(&p->list, &kvm->ioeventfds);

	FUNC13(&kvm->slots_lock);

	return 0;

unlock_fail:
	FUNC13(&kvm->slots_lock);

fail:
	FUNC6(p);
	FUNC4(eventfd);

	return ret;
}