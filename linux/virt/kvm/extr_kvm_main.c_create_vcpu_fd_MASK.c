#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_vcpu {int vcpu_id; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  ITOA_MAX_LEN ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  kvm_vcpu_fops ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu)
{
	char name[8 + 1 + ITOA_MAX_LEN + 1];

	FUNC1(name, sizeof(name), "kvm-vcpu:%d", vcpu->vcpu_id);
	return FUNC0(name, &kvm_vcpu_fops, vcpu, O_RDWR | O_CLOEXEC);
}