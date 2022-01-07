
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_io_device {int dummy; } ;
struct _ioeventfd {int eventfd; } ;
typedef int gpa_t ;


 int EOPNOTSUPP ;
 int eventfd_signal (int ,int) ;
 int ioeventfd_in_range (struct _ioeventfd*,int ,int,void const*) ;
 struct _ioeventfd* to_ioeventfd (struct kvm_io_device*) ;

__attribute__((used)) static int
ioeventfd_write(struct kvm_vcpu *vcpu, struct kvm_io_device *this, gpa_t addr,
  int len, const void *val)
{
 struct _ioeventfd *p = to_ioeventfd(this);

 if (!ioeventfd_in_range(p, addr, len, val))
  return -EOPNOTSUPP;

 eventfd_signal(p->eventfd, 1);
 return 0;
}
