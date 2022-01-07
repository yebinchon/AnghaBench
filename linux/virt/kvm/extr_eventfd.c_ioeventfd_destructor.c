
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_io_device {int dummy; } ;
struct _ioeventfd {int dummy; } ;


 int ioeventfd_release (struct _ioeventfd*) ;
 struct _ioeventfd* to_ioeventfd (struct kvm_io_device*) ;

__attribute__((used)) static void
ioeventfd_destructor(struct kvm_io_device *this)
{
 struct _ioeventfd *p = to_ioeventfd(this);

 ioeventfd_release(p);
}
