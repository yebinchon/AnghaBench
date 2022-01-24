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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct kvm_vcpu *vcpu,
			     unsigned long a0,
			     unsigned long a1,
			     unsigned long a2,
			     unsigned long a3)
{
	FUNC0(vcpu, 0, a0);
	FUNC0(vcpu, 1, a1);
	FUNC0(vcpu, 2, a2);
	FUNC0(vcpu, 3, a3);
}