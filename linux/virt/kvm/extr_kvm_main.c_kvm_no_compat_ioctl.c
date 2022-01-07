
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EINVAL ;

__attribute__((used)) static long kvm_no_compat_ioctl(struct file *file, unsigned int ioctl,
    unsigned long arg) { return -EINVAL; }
