
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_stat_data {int kvm; } ;
struct inode {scalar_t__ i_private; } ;
struct file {int dummy; } ;


 int kvm_put_kvm (int ) ;
 int simple_attr_release (struct inode*,struct file*) ;

__attribute__((used)) static int kvm_debugfs_release(struct inode *inode, struct file *file)
{
 struct kvm_stat_data *stat_data = (struct kvm_stat_data *)
       inode->i_private;

 simple_attr_release(inode, file);
 kvm_put_kvm(stat_data->kvm);

 return 0;
}
